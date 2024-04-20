return Scaffold(
      body: Center(
      child: Column(
        
          children: [Container(

            color: Colors.black,
            
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    
                  
                  Text("Job Finder",style: style,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                    decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your username',
                                   ),
                                  ),
                  ),
                  ElevatedButton(
                    onPressed: ()
                    {
                      _visible=appState.hide(_visible);
                      print("hehe");
                      print(_visible);
                    },
                    child: Text("Press")),
                            ],),
            
          ),
        
      ),
      ),
    );
    
      
    
  }

}