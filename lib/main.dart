import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  int i = 0;
  bool status = true;
  String? gender = "male";
  bool mango = false;
  bool banana = false ;
  bool apple = false ;
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
            title: const Text("Checkbox",style: TextStyle(
              color: Colors.white,
            ),),
            backgroundColor: Colors.blue, // Set the background color to transparent
          ),
       body: Container(
         padding: EdgeInsets.all(10),
         child: Stack(
           alignment: Alignment.center,
           children: [
             Container(width: 300,height: 300,color: Colors.red,),
             Container(width: 200,height: 200,color: Colors.blue,),
             Container(width: 100,height: 100,color: Colors.yellow,),
             Text("Amany"),
           ],
         ),


       ),
     ),
   );
  }
}
//
// checkbox
// child: Column(
// children: [
// Text("Choose yor favorite hobbies"),
// CheckboxListTile(
// title: Text("Mango"),
// value: mango,onChanged: (val){
// setState(() {
// mango = val!;
// });
// }), CheckboxListTile(
// title: Text("Banana"),
// value: banana,onChanged: (val){
// setState(() {
// banana = val!;
// });
// }), CheckboxListTile(
// title: Text("Apple"),
// value: apple,onChanged: (val){
// setState(() {
// apple = val!;
// });
// }),
//
// ],
// ),
// ################################################
// radio check code
// RadioListTile(
// title: Text("FeMale"),
// value: "female", groupValue: gender, onChanged: (val){
// setState(() {
// gender = val;
// });
// })
// awitch code
// child: Column(
// children: [
// SwitchListTile(
// title: Text("SwitchListTile"),
// activeColor: Colors.cyan,
// inactiveThumbColor: Colors.red,
// inactiveTrackColor: Colors.blueGrey,
// activeTrackColor: Colors.blue,
// value: status, onChanged: (val){
// print("on Changeeeeeeeeeeeeeeeeeee $val");
// setState(() {
// status = val;
// });
// })
// ],
// ),
// #########################################################
// counter code
// child: Column(
// children: [
// IconButton(onPressed: (){
// setState(() {
// i++;
// });
//
// print("$i");
// }, icon: Icon(Icons.add),),
// Text("Counter $i",style: TextStyle(fontSize: 30),),
// IconButton(onPressed: (){
// setState(() {
// i-- ;
// });
// print("$i");
// }, icon: Icon(Icons.remove))
// ],
// ),


// ############################################################
//Stateless Widget

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//
//   final List employee = [
//     {"name":"Ahmed", "age":30,"lastname":"Asaad" },
//     {"name":"Amany", "age":25,"lastname":"Ezzat" },
//     {"name":"Aml", "age":25,"lastname":"Aly" },
//     {"name":"Abdo", "age":30,"lastname":"Ahmed" },
//     {"name":"Ezzat", "age":25,"lastname":"Ezzat" },
//     {"name":"Omnia", "age":25,"lastname":"Asaad" },
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: (){
//             print("on pressed from floting Action button");
//           },
//         ),
//           appBar: AppBar(
//             title: const Text("Buttons",style: TextStyle(
//               color: Colors.white,
//             ),),
//             backgroundColor: Colors.blue, // Set the background color to transparent
//           ),
//           body:Container(
//             padding: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               MaterialButton(
//                 color: Colors.blue,
//                 textColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
//                 onLongPress: (){
//                   print("On long Pressed");
//                 },
//                 onPressed: (){
//                 print("On Pressed");
//               },
//               child: Text("Click me", style: TextStyle(fontSize: 20, fontWeight:FontWeight.w700),),)
//             ],
//           ),
//           )
//       ),
//     );
//   }
// }

// ###########################################################
// Example
// class MyApp extends StatelessWidget{
//   MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:Scaffold(
//
//         appBar: AppBar(title:const Text("Example ",style: TextStyle(color: Colors.white),),
//         backgroundColor: Colors.blue,),
//         body:Container(
//           padding: const EdgeInsets.all(10),
//             child: Column(
//               children: [
//                  Container(
//                    decoration: BoxDecoration(
//                      color: const Color(0xffe6f0fa),
//                      border:Border.all(color: Colors.black,width: 1)
//                    ),
//                      padding: const EdgeInsets.all(10),
//                       width: 1000,
//                      child: Text("Amany Assad",textAlign: TextAlign.center,
//                        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.grey[700]),
//                      ),
//                  ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: const Color(0xffe6f0fa),
//                       border:Border.all(color: Colors.black,width: 1)
//                   ),
//                   padding: const EdgeInsets.all(10),
//                   margin: const EdgeInsets.only(top: 10),
//                   width: 1000,
//                   child: Text("One of the most common layout patterns is to arrange widgets vertically or horizontally. You can use a Row widget to arrange widgets horizontally, and a Column widget to arrange widgets vertically.",textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 20,color: Colors.grey[700]),
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: const Color(0xffe6f0fa),
//                       border:Border.all(color: Colors.black,width: 1)
//                   ),
//                   padding: const EdgeInsets.symmetric(vertical: 10),
//                   margin: const EdgeInsets.only(top: 10),
//                   width: 1000,
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(Icons.star , size:20),
//                           Icon(Icons.star , size:20),
//                           Icon(Icons.star , size:20),
//                           Icon(Icons.star , size:20),
//                           Icon(Icons.star , size:20),
//                         ],
//                       ),
//                       Text("170 Reviews",style: TextStyle(fontSize: 20),)
//                     ],
//                   )
//                 ),
//                 Container(
//
//                     decoration: BoxDecoration(
//                         color: const Color(0xffe6f0fa),
//                         border:Border.all(color: Colors.black,width: 1)
//                     ),
//                     padding: const EdgeInsets.all(10),
//                     margin: const EdgeInsets.only(top: 11),
//                     width: 1000,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Spacer(),
//                         Column(
//                           children: [
//                             Icon(Icons.person , color:Colors.green[400]),
//                             Text("prep",style: TextStyle(fontSize: 18),),
//                             Container(height: 8),
//                             Text("25 min",style: TextStyle(fontSize: 18),),
//                           ],
//
//                         ),
//                         Spacer(),
//                         Column(
//                           children: [
//                             Icon(Icons.alarm , color:Colors.green[400]),
//                             Text("Cook",style: TextStyle(fontSize: 18),),
//                             Container(height: 8),
//                             Text("1hr",style: TextStyle(fontSize: 18),),
//                           ],
//                         ),
//                         Spacer(),
//                         Column(
//                           children: [
//                             Icon(Icons.restaurant , color:Colors.green[400]),
//                             Text("Feed",style: TextStyle(fontSize: 18),),
//                             Container(height: 8),
//                             Text("4-6",style: TextStyle(fontSize: 18),),
//                           ],
//                         ),
//                         Spacer(),
//                       ],
//                     )
//                 ),
//               ])
//         )
//       )
//   );
//   }
// }

// ####################################################################
// expanded code
// Container(
//
// child:Column(children: [
// Expanded(
// flex: 1,
// child: Container(color: Colors.red, height: 100,)),
// Expanded(
// flex: 2,
// child: Container(color: Colors.blue, height: 100,)),
// Expanded(
// flex: 2,
// child: Container(color: Colors.green, height: 100,)),
//
//
// ],)
// )
// ###########################################
//Icon code
// IconButton(onPressed: (){print("on pressed");},
// iconSize: 100,
// icon: Icon(Icons.star))
// ListView code
// child: ListView(
// children: [
// Card(
// child: ListTile(
// tileColor: Colors.red,
// onLongPress: (){
// print("On long press");
// },
// title: Text("Amany"),
// subtitle: Text("Age 25"),
// trailing: Text("2024"),
// ),
// ),Card(
// child: ListTile(
// onTap: (){
// print("On tap");
// },
// title: Text("Amany"),
// subtitle: Text("Age 25"),
// trailing: Text("2024"),
// ),
// ),
// ],
//
//
// )

// #####################################################
// Gridview.count
// crossAxisCount: 2,
// mainAxisSpacing: 10.0,
// crossAxisSpacing: 10.0,
// childAspectRatio: 2,
//
//
// children: [
// Container(child: Text("Ahmed"),color: Colors.red,),
// Container(child: Text("Amany"),color: Colors.green,),
// Container(child: Text("Amal"),color: Colors.blue,),
// Container(child: Text("Omnia"),color: Colors.yellow,),
// Container(child: Text("Esraa"),color: Colors.yellow,),
// Container(child: Text("Abdo"),color: Colors.yellow,),
// ],
// ########################################
// image attribute code
// width: 500,
// height: 400,
// alignment: Alignment.center,
// margin: const EdgeInsets.all(10),
// padding: const EdgeInsets.all(20),
// child: Image.asset(
// fit:BoxFit.cover,
// "Images/th.jpg",
// width: 400,
// height: 500,)
// ##############################################
// container attributes code
// decoration:  BoxDecoration(
//   color: Colors.cyan,
//   borderRadius: BorderRadius.all(Radius.circular(4000)),
//   border:Border.all(color: Colors.black, width:10),
//   boxShadow: [
//     BoxShadow(
//       color: Colors.black26,
//       offset: Offset(10,10),
//       spreadRadius: 10,
//       blurRadius: 10,
//     )]
// ),
// ##################################################
// text code 
// const Text(
// "Amany Ahmed",
// style: TextStyle(
// color: Colors.indigo,
// fontSize: 40.0,
// fontWeight: FontWeight.w700,
// ),
// ),