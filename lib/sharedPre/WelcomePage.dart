import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
 // const ({Key? key}) : super(key: key);
String Nname;
String Eemail;

WelcomePage(this.Nname, this.Eemail);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Container(
        child: Column(
          children: [
            Text('welcome'+Nname),
            Text(Eemail),
          ],
        ),
      ),
    );
  }
}
