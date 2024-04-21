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
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(40, 4, 5, 32)),
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
      
    );
    
    return Scaffold(
      body: Center(
      child: Column(
        
          children: [Expanded(
            child: Container(
      color: Colors.black,
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              
            
            Text("Job Finder",style: style,),
            SizedBox(height: 20,),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
              decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintStyle: TextStyle(color: Colors.white),
              labelStyle: TextStyle(color: Colors.white),
              
              labelText: 'Enter your username',
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
                             style: TextStyle(color: Colors.white),
                             controller: myController,
                            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
              decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintStyle: TextStyle(color: Colors.white),
              labelStyle: TextStyle(color: Colors.white),
          
              
              labelText: 'Enter your Password',
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
                          style: TextStyle(color: Colors.white),
                            ),
            ),
            CupertinoButton(
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
              child: Text("Submit")),
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
        var title = "Plumber";
        var style = TextStyle(color: Colors.blue);
        var style_1 = TextStyle(fontSize: 50, color: Colors.black, overflow: TextOverflow() );
        var color = Colors.green;

        return Scaffold(
          appBar: AppBar(title:  Text("Job Finder", style: style,textAlign: TextAlign.center,),backgroundColor: Colors.black,),
          body: Center(child: SingleChildScrollView(
            // appBar: AppBar(title:  Text("Job Finder", style: style,textAlign: TextAlign.center,),backgroundColor: Colors.black,),
            child: SafeArea(
              child: Container(
                color: Colors.black,
                child: Column(
                  children: [
                    Row(children: [SizedBox(width: 275,),
                    CupertinoButton(child: Text("Logout", style: style,),
                    
                     onPressed: (){
                      Navigator.pop(context);
                    })],),
                    Container(
                      
                        
                          child: Column(children: [
                            // for (String profession in kaam) 
                              jobCard(color: color,title: title,style_1: style_1,),
                               SizedBox(height: 10,),
                              jobCard(color: color,title: "Electrician",style_1: style_1,),
                               SizedBox(height: 10,),
                              jobCard(color: color,title: "Waiter",style_1: style_1,),
                               SizedBox(height: 10,),
                              jobCard(color: color,title: "Delivery Boy",style_1: style_1,),
                               SizedBox(height: 10,),
                              jobCard(color: color,title: "Car Washer",style_1: style_1,),
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
    required this.color,
    required this.title,
    required this.style_1,
  });

  final MaterialColor color;
  final String title;
  final TextStyle style_1;

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 250,
                    width: 225,
                    color: color,
                    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Column(
    children: [
      Text(title, style: style_1,)
      ],),
                  );
  }
}