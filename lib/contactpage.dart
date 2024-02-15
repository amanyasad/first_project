import 'package:flutter/material.dart';
import 'homepage.dart';
class Contact extends StatelessWidget{

  const Contact({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:const Text("Contact") , backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),),
        body:ListView(
          children: [
            Center(
              child: Text("Content Page", style: TextStyle(fontSize: 24),),
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
                child: Text("Go To Home Page"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:
                      (context) => Home()),(route)=> false);
                },
                child: Text("Go To Home Page with pushAndRemoveUntil"),
              ),
            )
          ],)
    );
  }}