import 'package:flutter/material.dart';
import 'contactpage.dart';
import 'homepage.dart';
class About extends StatelessWidget{

  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:const Text("About") , backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(fontSize: 30),),
        body:ListView(
          children: [
            Center(
              child: Text("About Page", style: TextStyle(fontSize: 24),),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:
                      (context) => Contact()));
                },
                child: Text("Go To Contact"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:
                      (context) => Home()));
                },
                child: Text("go to home page"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text("back to home"),
              ),
            )
          ],
        )
    );
  }}