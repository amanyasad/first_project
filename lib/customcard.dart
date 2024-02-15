
import 'package:flutter/material.dart';

class CustomListTil extends StatelessWidget{
  final String name;
  final String email;
  final String date;
  final String imagename;
  const CustomListTil(
      {super.key, required this.name, required this.email, required this.date, required this.imagename});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset(
                    "Images/$imagename",
                    fit:BoxFit.cover
                )),
          ),
          Expanded(
              child: ListTile(
                title:Text("$name"),
                subtitle: Text("$email"),
                trailing: Text("$date"),
              ))
        ],
      ),
    );
  }}
