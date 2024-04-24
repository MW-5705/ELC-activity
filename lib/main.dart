// import 'dart:js';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

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
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(0, 255, 255, 255)),
          // textSelectionTheme: TextSelectionThemeData.onPrimary,
          textTheme: GoogleFonts.notoSerifDisplayTextTheme(
          
        ),
        
      ),
      home: MyHomePage(title: "urbanclap",),
    ));
  }
}
class MyAppState extends ChangeNotifier{
  var page = "Mehar";
  var professions = ["Plumber","Electrician","Waiter","Helper","Car Washer"];
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
  final myController = TextEditingController();
    @override 
    void dispose(){
      myController.dispose();
      super.dispose();
    }
    final _formKey = GlobalKey<FormState>();

    
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: Colors.blueAccent,
      decoration: null,
      fontFamily: "Oswald" 
      
    );
    
    return Scaffold(
      // appBar: AppBar(title: Text("QuickHire"),),
      body: Center(
      child: Column(
        
          children: [Expanded(
            child: Container(
      color: Colors.white,
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              
            
            Text("QuickHire",style: style,),
            // SizedBox(height: 300,),
            Image.asset("assets\image.jpeg"),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
              decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintStyle: TextStyle(color: Colors.black),
              labelStyle: TextStyle(color: Colors.black),
              
              labelText: 'Username',
              hintText: 'mehar_walia0505'
              // errorStyle: DefaultTextStyle(style: style, child: ),
              // fillColor: Color.fromARGB(255, 248, 246, 246)
              // style: const TextStyle(color: Colors.white),
              
              // 
                             ),
                             validator: (value){
                              if(value == null){
                                return "Please Enter Username";
                              }
                              return null;
                             },
                             style: TextStyle(color: Colors.black),
                             controller: myController,
                            ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
              decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintStyle: TextStyle(color: Colors.black),
              labelStyle: TextStyle(color: Colors.black),
          
              
              labelText: 'Password',
              hintText: '***********'
              // fillColor: Color.fromARGB(255, 248, 246, 246)
              // style: const TextStyle(color: Colors.white),
              
              // style: TextStyle(color: Colors.white),
                             ),
                             validator: (value){
                              if(value == null){
                                return "Please Enter Password";
                              }
                              return null;
                             },
                          style: TextStyle(color: Colors.black),
                            ),
            ),
            SizedBox(height: 10,),
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
                onPressed: ()
                {
                  // if(_formKey.currentState != null&&_formKey.currentState!.validate()){
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(content: Text("Validating Credentials"),backgroundColor: Colors.white,)
                  //   );
                      print("hehe");
                      Navigator.push(context, CupertinoPageRoute(builder: (context) =>  FavouritesPage()),);
                  // page = FavouritesPage();
                  }
                  
                
                  
                ,
                child: Text("Submit",style: TextStyle(color: Colors.blue,fontSize: 25,),)),
            ),
                      ],),
      
    )
          ),]
        
      ),
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
class FavouritesPage extends StatelessWidget{
      @override
      Widget build(BuildContext context){
        var appState = context.watch<MyAppState>();
        List<String> kaam = appState.professions;
        var title = "Uber Driver";
        var style = TextStyle(color: Colors.blue, fontFamily: "Sans Serif");
        var style_1 = TextStyle(fontSize: 40, color: Colors.black,fontFamily: "Sans Serif" );
        var color = Colors.green;
        var color1 = Colors.purple;
        var color2 = Colors.brown;
        var color3 = Colors.red;
        var color4 = Colors.blue;

        return Scaffold(
          appBar: AppBar(title:  Text("QuickHire", style: style,textAlign: TextAlign.center,),),
          body: Center(child: SingleChildScrollView(
            // appBar: AppBar(title:  Text("Job Finder", style: style,textAlign: TextAlign.center,),backgroundColor: Colors.black,),
            child: SafeArea(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(children: [SizedBox(width: 275,),
                    CupertinoButton(child: Text("Logout", style: style,),
                    
                     onPressed: (){
                      Navigator.pop(context);
                    })],),
                    Text("All Jobs Available", style: TextStyle(color: Colors.blue, fontSize: 40,fontFamily: "Sans Serif" ),textAlign: TextAlign.left),
                    Container(
                      
                        
                          child: Column(children: [
                            // for (String profession in kaam) 
                            jobCard(title: "Swiggy Valet",style_1: style_1,),
                               SizedBox(height: 10,),
                               jobCard(title: "Shop Attendant",style_1: style_1,),
                               SizedBox(height: 10,),
                               jobCard(title: "Office Peon",style_1: style_1,),
                               SizedBox(height: 10,),
                              jobCard(title: title,style_1: style_1,),
                               SizedBox(height: 10,),
                              
                              
                              
                              jobCard(title: "Dish Washer",style_1: style_1,),
                               SizedBox(height: 10,)
                              ],),)
                        ,
                      
                    
                    
                  ],
                ),
              ),
            ),
          ),
        ));
        
        
        
}}

class jobCard extends StatelessWidget {
  const jobCard({
    super.key,
    // required this.color,
    required this.title,
    required this.style_1,
  });
  

  // final MaterialColor color;
  final String title;
  final TextStyle style_1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // var rang = theme
    return Container(
                    height: 175,
                    width: 225,
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                      // color: Colors.greenAccent[200],
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), ]
                    ),
                    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Column(
    children: [
      Text(title, style: style_1,textAlign: TextAlign.center,),
      CupertinoButton(
        child: Text("More Info",style: TextStyle(color: Colors.black),),
         onPressed: (){

          print("hehe");
          Navigator.push(context, CupertinoPageRoute(builder: (context) =>  jobInfo(title: title, style_1: style_1,)),);
          })
      ],),
                  );
  }
}
class jobInfo extends StatelessWidget{
  const jobInfo({
    super.key,
    
    required this.title,
    required this.style_1,
  });
  // final MaterialColor color;
  final String title;
  final TextStyle style_1;
  @override
  Widget build(BuildContext context){
    var appState = context.watch<MyAppState>();
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: Column(
          children: [
            CupertinoButton(
              child: Text("Out"), 
              onPressed: (){Navigator.pop(context);}
              ),
              ListView(
                // for (var job in )
              )
              ],
              ),
              ),
              );
  }

}