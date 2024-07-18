// import 'dart:js';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyAppState(),
        child: MaterialApp(
          title: 'Job Finder',
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color.fromARGB(0, 255, 255, 255)),
            // textSelectionTheme: TextSelectionThemeData.onPrimary,
            textTheme: GoogleFonts.notoSerifDisplayTextTheme(),
          ),
          home: MyHomePage(
            title: "urbanclap",
          ),
        ));
  }
}

class MyAppState extends ChangeNotifier {
  var page = "Mehar";
  var professions = [
    {
      "Swiggy Valet": ["", 5000, ""]
    },
    {
      "Shop Attendant": ["", 5000, ""]
    },
    {
      "Office Peon": ["", 5000, ""]
    },
    {
      "Uber Driver": ["", 5000, ""]
    },
    {
      "Security Guard": ["", 5000, ""]
    }
  ];
  var info1 = [
    "Swiggy",
    1500,
    "Leela Bhawan",
    "As a Swiggy Valet, your main role will be to pick up food orders from restaurants and deliver them to customers promptly and accurately.",
    "assets/Images/Swiggy-Logo.png",
    "per day"
  ];
  var info2 = [
    "Sahni Bakery",
    25000,
    "Defence Colony",
    "As a Shop Attendant, you will assist customers in the store by providing product information, helping with purchases, and ensuring a pleasant shopping experience.",
    "assets/Images/shop-attendant.JPG",
    "per month"
  ];
  var info3 = [
    "General Logistics",
    5000,
    "Leela Bhawan",
    "As an Office Peon, you will support office operations by handling tasks like mail delivery, maintaining office supplies, and assisting with various administrative duties.",
    "assets/Images/office-peon-uniform.jpg",
    "per week"
  ];
  var info4 = [
    "Uber",
    5000,
    "Patiala-Rajpura",
    "As an Uber Driver, your primary responsibility will be to safely transport passengers from one location to another using the Uber app.",
    "assets/Images/Uber-Logo.png",
    "per day"
  ];
  var info5 = [
    "Vedantu Center",
    3500,
    "Model Town",
    "Your role as a Security Guard will involve protecting people and property by patrolling, monitoring surveillance systems, and responding to security incidents.",
    "assets/Images/Security-Guard.jpg",
    "per week"
  ];
  var Liked = <String>[];
  void toggle(String i) {
    if (Liked.contains(i)) {
      Liked.remove(i);
      print("removed");
    } else {
      Liked.add(i);
    }
  }

  var map = {
    "Swiggy Valet": [
      "Swiggy",
      1500,
      "Leela Bhawan",
      "As a Swiggy Valet, your main role will be to pick up food orders from restaurants and deliver them to customers promptly and accurately.",
      "assets/Images/Swiggy-Logo.png",
      "per day"
    ],
    "Shop Attendant": [
      "Sahni Bakery",
      25000,
      "Defence Colony",
      "As a Shop Attendant, you will assist customers in the store by providing product information, helping with purchases, and ensuring a pleasant shopping experience.",
      "assets/Images/shop-attendant.JPG",
      "per month"
    ],
    "Office Peon": [
      "General Logistics",
      5000,
      "Leela Bhawan",
      "As an Office Peon, you will support office operations by handling tasks like mail delivery, maintaining office supplies, and assisting with various administrative duties.",
      "assets/Images/office-peon-uniform.jpg",
      "per week"
    ],
    "Cab Driver": [
      "Uber",
      5000,
      "Patiala-Rajpura",
      "As an Uber Driver, your primary responsibility will be to safely transport passengers from one location to another using the Uber app.",
      "assets/Images/Uber-Logo.png",
      "per day"
    ],
    "Security Guard": [
      "Vedantu Center",
      3500,
      "Model Town",
      "Your role as a Security Guard will involve protecting people and property by patrolling, monitoring surveillance systems, and responding to security incidents.",
      "assets/Images/Security-Guard.jpg",
      "per week"
    ]
  };

  String username = '102303223';
  String password = '102303225';
  String usernamei = '';
  String passwordi = "";
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners

    super.notifyListeners();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    final theme = Theme.of(context);

    // var value;
    final style = theme.textTheme.displayMedium!
        .copyWith(decoration: null, fontFamily: "Roboto");

    return Scaffold(
      // appBar: AppBar(title: Text("QuickHire"),),
      body: Center(
        child: Column(children: [
          Expanded(
              child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WorkDash",
                  style: style,
                ),
                // SizedBox(height: 300,),
                // Image.asset('assets/Images/image.jpeg',height: 300,),
                Text(
                  "Empowering your job hunt",
                  style: TextStyle(fontFamily: "Roboto"),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(
                            color: Colors.black, fontFamily: "Roboto"),
                        labelText: 'Username',
                        hintText: 'abc_def'
                        // errorStyle: DefaultTextStyle(style: style, child: ),
                        // fillColor: Color.fromARGB(255, 248, 246, 246)
                        // style: const TextStyle(color: Colors.white),

                        //
                        ),
                    onChanged: (value) {
                      setState(() {
                        appState.usernamei = value;
                      });
                    },
                    style: TextStyle(color: Colors.black),
                    //  controller: myController,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(
                            color: Colors.black, fontFamily: "Roboto"),
                        labelText: 'Password',
                        hintText: '*********'
                        // fillColor: Color.fromARGB(255, 248, 246, 246)
                        // style: const TextStyle(color: Colors.white),

                        // style: TextStyle(color: Colors.white),
                        ),
                    onChanged: (value) {
                      setState(() {
                        appState.passwordi = value;
                        // print(passwordi);
                      });
                    },
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 57,

                  //   margin: const EdgeInsets.all(15.0),
                  // padding: const EdgeInsets.all(3.0),

                  // // color: Colors.black,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CupertinoButton(
                      onPressed: () {
                        // if(_formKey.currentState != null&&_formKey.currentState!.validate()){
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(content: Text("Validating Credentials"),backgroundColor: Colors.white,)
                        //   );

                        if ((appState.passwordi == appState.password) &&
                            (appState.username == appState.username)) {
                          // print(passwordi);
                          // print(password);
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => FavouritesPage()),
                          );
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Container(
                                    margin: const EdgeInsets.all(30),
                                    padding: const EdgeInsets.all(10),
                                    // decoration:
                                    // BoxDecoration(border: Border.all()),
                                    child: Text(
                                      "Incorrect username or password",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Colors.white),
                                    ),
                                  ),
                                  backgroundColor:
                                      Color.fromRGBO(250, 112, 112, 0.9),
                                );
                              });
                        }
                        // rgba (233, 120,116, 1)

                        // page = FavouritesPage();
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )),
                ),
              ],
            ),
          )),
        ]),
      ),
    );
  }
}

// class Login extends StatelessWidget {
//   Login({
//     super.key,
//     required this.style,
//   });

//   final TextStyle style;
//   final myController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,

//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [

//             Text("Job Finder",style: style,),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//               decoration: const InputDecoration(
//               border: UnderlineInputBorder(),
//               hintStyle: TextStyle(color: Colors.white),
//               labelStyle: TextStyle(color: Colors.white),

//               labelText: 'Enter your username',
//               hintText: 'mehar_walia0505'
//               // fillColor: Color.fromARGB(255, 248, 246, 246)
//               // style: const TextStyle(color: Colors.white),

//               //
//                              ),
//                              style: TextStyle(color: Colors.white),
//                              controller: myController,
//                             ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//               decoration: const InputDecoration(
//               border: UnderlineInputBorder(),
//               hintStyle: TextStyle(color: Colors.white),
//               labelStyle: TextStyle(color: Colors.white),

//               labelText: 'Enter your Password',
//               hintText: '***********'
//               // fillColor: Color.fromARGB(255, 248, 246, 246)
//               // style: const TextStyle(color: Colors.white),

//               // style: TextStyle(color: Colors.white),
//                              ),
//                           style: TextStyle(color: Colors.white),
//                             ),
//             ),
//             ElevatedButton(
//               onPressed: ()
//               {

//                 print("hehe");

//               },
//               child: Text("Submit")),
//                       ],),

//     );
//   }
// }
class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var kaam = appState.professions;
    var title = "Uber Driver";
    var style = TextStyle(
      color: Colors.black,
      fontFamily: "Sans Serif",
    );
    var style_1 =
        TextStyle(fontSize: 25, color: Colors.black, fontFamily: "Sans Serif");
    var color = Colors.green;
    var color1 = Colors.purple;
    var color2 = Colors.brown;
    var color3 = Colors.red;
    var color4 = Colors.blue;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Hello, abc_def",
            style: style,
            textAlign: TextAlign.center,
          ),
          automaticallyImplyLeading: false,
          actions: [
            ElevatedButton.icon(
                label: Text(""),
                icon: Icon(Icons.bookmark),
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => wishlistPage()),
                  );
                }),
            CupertinoButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Logout"))
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            // appBar: AppBar(title:  Text("Job Finder", style: style,textAlign: TextAlign.center,),backgroundColor: Colors.black,),
            child: SafeArea(
              child: Container(
                color: Color.fromRGBO(240, 240, 240, 1),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Showing ${appState.professions.length} Jobs",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: "Sans Serif",
                            ),
                            textAlign: TextAlign.right),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          // for (String profession in kaam)
                          jobCard(
                              title: "Swiggy Valet",
                              style_1: style_1,
                              kaam: appState.info1),
                          SizedBox(
                            height: 10,
                          ),
                          jobCard(
                              title: "Shop Attendant",
                              style_1: style_1,
                              kaam: appState.info2),
                          SizedBox(
                            height: 10,
                          ),
                          jobCard(
                              title: "Office Peon",
                              style_1: style_1,
                              kaam: appState.info3),
                          SizedBox(
                            height: 10,
                          ),
                          jobCard(
                              title: "Cab Driver",
                              style_1: style_1,
                              kaam: appState.info4),
                          SizedBox(
                            height: 10,
                          ),

                          jobCard(
                            title: "Security Guard",
                            style_1: style_1,
                            kaam: appState.info5,
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class jobCard extends StatelessWidget {
  jobCard({
    super.key,
    // required this.color,
    required this.title,
    required this.style_1,
    required this.kaam,
  });

  // final MaterialColor color;
  final String title;
  final TextStyle style_1;
  final List kaam;
  var style = TextStyle(fontFamily: "Roboto");

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // var rang = theme
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 128,
        width: 350,

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                // color: Colors.greenAccent[200],
                offset: const Offset(
                  0.25,
                  0.25,
                ),
                blurRadius: 0.25,
                spreadRadius: 0.50,
              ),
            ]),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: style_1,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "At: ${kaam[0]}",
                          style: style,
                        ),
                        Text(
                          "Pay: ${kaam[1]} ${kaam[5]}",
                          textAlign: TextAlign.left,
                          style: style,
                        ),
                        Text(
                          "Location: ${kaam[2]}",
                          style: style,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CupertinoButton(
                            child: Text(
                              "More Info",
                              style: TextStyle(color: Colors.blue),
                              textAlign: TextAlign.right,
                            ),
                            onPressed: () {
                              print("hehe");
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => jobInfo(
                                          title: title,
                                          style_1: style_1,
                                          kaam: kaam,
                                        )),
                              );
                            }),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class jobInfo extends StatelessWidget {
  jobInfo({
    super.key,
    required this.title,
    required this.style_1,
    required this.kaam,
  });
  // var appState = context.watch<MyAppState>();
  // final MaterialColor color;
  final String title;
  final TextStyle style_1;
  final List kaam;
  var style = TextStyle(fontFamily: "Roboto");

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    IconData icon;
    if (appState.Liked.contains(title)) {
      icon = Icons.bookmark;
    } else {
      icon = Icons.bookmark_border;
    }
    // List<String> kaam = appState.professions;

    return Scaffold(
      appBar: AppBar(
          title: Text(
        title,
        style: TextStyle(fontFamily: "Roboto"),
      )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: (Column(
            children: [
              Image.asset(
                "${kaam[4]}",
                height: 300,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description:",
                    style: TextStyle(
                        fontFamily: "Roboto", fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " ${kaam[3]}",
                    style: style,
                  ),
                  Text(
                    "Company:",
                    style: TextStyle(
                        fontFamily: "Roboto", fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  ${kaam[0]}",
                    style: style,
                  ),
                  Text(
                    "Location:",
                    style: TextStyle(
                        fontFamily: "Roboto", fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  ${kaam[2]}",
                    style: style,
                  ),
                  Text(
                    "Pay Rate:",
                    style: TextStyle(
                        fontFamily: "Roboto", fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  ₹ ${kaam[1]} ${kaam[5]}",
                    style: style,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text("Your details have been sent!"));
                          });
                    },
                    label: Text(
                      "Apply now",
                      style:
                          TextStyle(color: Colors.black, fontFamily: "Roboto"),
                    ),
                    icon: Icon(Icons.arrow_circle_right),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      appState.toggle(title);
                      // appState.j++;
                    },
                    icon: Icon(icon),
                    label: Text(
                      "Save For Later",
                      style:
                          TextStyle(color: Colors.black, fontFamily: "Roboto"),
                    ),
                  )
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}

class wishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var map = appState.map;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Wishlist"),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Showing ${appState.Liked.length} Saved Job(s)",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                  ),
                ),
                for (var i in appState.Liked)
                  ListTile(
                    title: Text(i),
                  )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
