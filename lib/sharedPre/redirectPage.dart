import 'package:flutter/material.dart';
import 'package:responsive/forms/ui/register/main_register_screen.dart';
import 'package:responsive/sharedPre/sharedPreference.dart';

import 'WelcomePage.dart';
class redirectP extends StatelessWidget {
 // const redirectP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Column(
        children: [
          Container(
            child:Text("welcome to our app ") ,

          ),
          ElevatedButton(
            child: Text('enter app'),
            onPressed: () async {
              String name=SpHelper.spHelper.getUserName();
              String Email=SpHelper.spHelper.getUserName();
               if(name==null){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => FormUi()));

               }
               else{
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => WelcomePage(name,Email)));
               };
            },
          ),
        ],
      ),
    );
  }
}
