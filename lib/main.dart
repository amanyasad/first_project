import 'package:flutter/material.dart';
import 'aboutpage.dart';
import 'contactpage.dart';
import 'homepage.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        "home" : (context)=> Home(),
        "about" : (context)=> About(),
        "contact" : (context)=> Contact(),
      },
    );
  }
}


// 35- custom widget shortcut
// import 'package:flutter/material.dart';
// import 'customcard.dart';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatefulWidget{
//   const MyApp({super.key});
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home:Scaffold(
//             appBar: AppBar(title:const Text("custom widget shortcut") , backgroundColor: Colors.blue),
//             body:Container(
//                 padding: const EdgeInsets.all(10),
//                 child: const Column(
//                     children: [
//                       CustomListTil(
//                         name:'Amany' , email: 'amany@gmail.com', date: '7-9-1998', imagename: 'th.jpg',
//                       ),
//                       CustomListTil(
//                         name:'Ezzat' , email: 'ezzat@gmail.com', date: '8-8-1998', imagename: 'thh.jpg',
//                       )
//                     ]
//                 )
//             )
//         )
//     );
//   }
// }
//
//
// ########################################################

// 34- PageView
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatefulWidget{
//   const MyApp({super.key});
//   State<MyApp> createState() => _MyAppState();
//
//
// }
// class _MyAppState extends State<MyApp>{
//
//
//   @override
//
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//
//           appBar: AppBar(
//             title: Text("BottomNavgationBar"),
//             titleTextStyle: TextStyle(color: Colors.white),
//             backgroundColor: Colors.blue,
//           ),
//           body: Container(
//             padding: EdgeInsets.all(10),
//             child: Column(
//               children: [
//                 Container(
//                   height: 300,
//                   child: PageView(
//                     onPageChanged: (val){
//                       print(val) ;
//                     },
//                     children: [
//                       Image.asset("Images/th.jpg", fit: BoxFit.cover,),
//                       Image.asset("Images/thh.jpg", fit: BoxFit.cover,),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
// ############################################
// 33- bottomNavigationBar
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatefulWidget{
//   const MyApp({super.key});
//   State<MyApp> createState() => _MyAppState();
//
//
// }
// class _MyAppState extends State<MyApp>{
//
//   GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
//   int selectedindex = 0;
//   List<Widget> listwidget =[
//     Text("Page 1", style: TextStyle(fontSize: 30),),
//     Text("Page 2", style: TextStyle(fontSize: 30),)
//   ];
//   @override
//
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//           bottomNavigationBar:BottomNavigationBar(
//             onTap: (val){
//               setState(() {
//                 selectedindex = val;
//               });},
//             currentIndex: selectedindex,
//             backgroundColor: Colors.red,
//             selectedItemColor: Colors.white,
//             unselectedItemColor: Colors.black,
//             selectedFontSize: 20,
//             unselectedFontSize: 14,
//             selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
//             items: [
//               BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.settings,), label: "Settings"
//               ),
//             ],),
//           appBar: AppBar(
//             title: Text("BottomNavgationBar"),
//             titleTextStyle: TextStyle(color: Colors.white),
//             backgroundColor: Colors.blue,
//           ),
//           body: Container(
//             child: listwidget.elementAt(selectedindex),
//           ),
//         )
//     );
//   }
// }

// ####################################################
// 32- tabbar part2
//
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatefulWidget{
//   const MyApp({super.key});
//   State<MyApp> createState() => _MyAppState();
//
//
// }
// class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
//
//   GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
//   TabController ? tabController ;
//   @override
//   void initState(){
//     tabController = TabController(length: 3, vsync: this) ;
//     super.initState();
//   }
//
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:Scaffold(
//
//         key: scaffoldkey,
//         appBar: AppBar(title: Text("Tabbar"),
//           backgroundColor: Colors.blue,
//           titleTextStyle: TextStyle(color: Colors.white),
//           bottom: TabBar(
//             controller: tabController,
//             indicatorColor: Colors.black,
//             indicatorWeight: 10,
//             labelColor: Colors.white,
//             labelStyle: TextStyle(fontSize: 30),
//             unselectedLabelColor:  Colors.yellow,
//             unselectedLabelStyle: TextStyle(fontSize: 10),
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.laptop),
//                 text: "Laptop",
//               ),
//               Tab(
//                 icon: Icon(Icons.mobile_friendly),
//                 text: "Mobile",
//               ),
//               Tab(
//                 icon: Icon(Icons.desktop_access_disabled),
//                 text: "Pc",
//               ),
//             ],
//           ),),
//         body: Container(
//           padding: EdgeInsets.all(15),
//           child: TabBarView(
//             controller: tabController  ,
//             children: [
//               Column(
//                 children: [
//                   Text("laptop"),
//                   MaterialButton(onPressed: (){
//                     tabController!.animateTo(1) ;
//                   },
//                     child: Text("Go to Mobile"),
//                   ),
//
//                 ],
//               ),
//               Text("Mobile Page"),
//               Text("Pc Page"),
//             ],),
//         ),
//       ),
//
//     );
//   }
// }
//


// #######################################
// 31-tabbar part 1
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatefulWidget{
//   const MyApp({super.key});
//   State<MyApp> createState() => _MyAppState();
//
//
// }
// class _MyAppState extends State<MyApp>{
//
//   GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
//   @override
//
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: DefaultTabController(
//           length: 3,
//           child: Scaffold(
//             key: scaffoldkey,
//             appBar: AppBar(title: Text("Tabbar"),
//               backgroundColor: Colors.blue,
//               titleTextStyle: TextStyle(color: Colors.white),
//               bottom: TabBar(
//                 tabs: [
//                   Tab(child: Text("Labtop")),
//                   Tab(child: Text("Mobile")),
//                   Tab(child: Text("Pc")),
//                 ],
//               ),),
//             body: Container(
//               padding: EdgeInsets.all(15),
//               child: TabBarView(children: [
//                 Text("Labtop Page"),
//                 Text("Mobile Page"),
//                 Text("Pc Page"),
//               ],),
//             ),
//           ),
//         )
//     );
//   }
// }

// #########################################################
// 30-Drawer
// drawer: Drawer(
// child: Container(
// padding: EdgeInsets.all(15),
// child: ListView(
// children: [
// Row(
// children: [
// Container(
// width: 60,
// height: 60,
// child: ClipRRect(
// borderRadius: BorderRadius.circular(60),
// child: Image.asset("Images/th.jpg",
// fit:BoxFit.cover,
// ),
// ),
// ),
// Expanded(
// child:ListTile(
// title: Text("Amany Asaad"),
// subtitle: Text("amany@gmail.com"),
// ) )
// ],
// ),
// ListTile(
// title: Text("homepage"),
// leading: Icon(Icons.home),
// onTap: (){},
// ),
// ListTile(
// title: Text("Accounts"),
// leading: Icon(Icons.account_balance),
// onTap: (){},
// ),
// ListTile(
// title: Text("Orders"),
// leading: Icon(Icons.check_box),
// onTap: (){},
// ),
// ListTile(
// title: Text("About Us"),
// leading: Icon(Icons.help),
// onTap: (){},
// ),
// ListTile(
// title: Text("Contact Us"),
// leading: Icon(Icons.phone_android_outlined),
// onTap: (){},
// ),
// ListTile(
// title: Text("SignOut"),
// leading: Icon(Icons.exit_to_app),
// onTap: (){},
// ),
//
// ],
// ),
//
// ),
// ),
// ###########################################
// 29-Appbar
// appBar: AppBar(
// leading: IconButton(onPressed: (){},icon: Icon(Icons.home),),
// titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// title: const Text("Appbar",style: TextStyle(
// color: Colors.white,
// ),),
// backgroundColor: Colors.green, // Set the background color to transparent
// elevation: 20,
// shadowColor: Colors.red,
// actions: [
// IconButton(onPressed: (){}, icon: Icon(Icons.list)),
// IconButton(onPressed: (){}, icon: Icon(Icons.percent)),
// IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
// ],
//
// ),

// ####################################################
// 27&28-  TextFormField onSaved and autovalidate
// Container(
// padding: EdgeInsets.all(10),
// child: Form(
//
// key: formstate ,
// child:Column(
// children: [
// TextFormField(
// autovalidateMode: AutovalidateMode.always,
// onSaved: (val){
// username = val;
// },
// decoration: InputDecoration(hintText: "username"),
// validator: (value){
// if(value!.isEmpty){
// return "الحقل فارق";
// }
// if(value.length > 20){
// return "لا يمكن ان تكون القيمة اكبر من 20";
// }
// },
// ),
// TextFormField(
// autovalidateMode: AutovalidateMode.always,
// onSaved: (val){
// phone = val;
// },
// decoration: InputDecoration(hintText: "phone"),
// validator: (value){
// if(value!.isEmpty){
// return "الحقل فارق";
// }
// if(value.length < 9){
// return "لا يمكن ان يكون رقم الهاتف اقل من 9";
// }
// if(value.length > 12){
// return "لا يمكن ان يكون رقم الهاتف اكبر من 12";
// }
//
// },
// ),
// MaterialButton(
// textColor: Colors.white,
// color: Colors.red,
// child: Text("Valid"),
// onPressed: (){
// if(formstate.currentState!.validate()){
// formstate.currentState!.save();
// print("valid");
// print(username);
// print(phone);
// }else{
// print("Not Valid");
// }
// })
// ],
// )),
// ),

// ##############################################

// 26- TextFormField validator
// Container(
// padding: EdgeInsets.all(10),
// child: Form(
// key: formstate ,
// child:Column(
// children: [
// TextFormField(
// validator: (value){
// if(value!.isEmpty){
// return "الحقل فارق";
// }
// if(value.length > 20){
// return "لا يمكن ان تكون القيمة اكبر من 20";
// }
// },
// ),
// TextFormField(
// validator: (value){
// if(value!.isEmpty){
// return "الحقل فارق";
// }
// if(value.length > 10){
// return "لا يمكن ان تكون القيمة اكبر من 10";
// }
// },
// ),
// MaterialButton(
// textColor: Colors.white,
// color: Colors.red,
// child: Text("Valid"),
// onPressed: (){
// if(formstate.currentState!.validate()){
// print("valid");
// }else{
// print("Not Valid");
// }
// })
// ],
// )),
// ),
// #########################################
// 25- TextFormField onChange
// Container(
// padding: EdgeInsets.all(10),
// child: Column(
// children: [
//
// TextField(
// onChanged: (val){
// setState(() {
// textValue = val;
// });
// },
// ),
// MaterialButton(onPressed: (){
// print(username.text);
// },
// child: Text("Print"),
// color: Colors.blue,
// textColor: Colors.white,
// ),
// Text("$textValue"),
//
// ],
// ),
// ),

// ####################################################
// 25- TextFormField Controller
// Container(
// padding: EdgeInsets.all(10),
// child: Column(
// children: [
//
// TextField(
// controller: username,
//
// ),
// MaterialButton(onPressed: (){
// print(username.text);
// },
// child: Text("Print"),
// color: Colors.blue,
// textColor: Colors.white,
// )
//
// ],
// ),
// ),

// ################################################
// 24- TextFormField
// Container(
// child: Column(
// children: [
// TextField(
// maxLines: 3,
// minLines: 1,
// decoration: InputDecoration(
// border: OutlineInputBorder() ,
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.blue),
// borderRadius: BorderRadius.circular(40)
// ),
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.black, width: 2 )
// ),
// disabledBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.red)
// )
//
// ),
// ), TextField(
// keyboardType: TextInputType.text,
//
// ),
// ],
// ),
// ),
// ###################################################
// 23-TextField
// Container(
// child: Column(
// children: [
// TextField(
// decoration: InputDecoration(
// border: OutlineInputBorder(),
// prefixIcon: Icon(Icons.person,),
// hintText: 'username',
// ),
// ), TextField(
// decoration: InputDecoration(
// label: Text("email",style: TextStyle(
// fontSize: 20,
// color: Colors.blue,
// ),),
// fillColor: Colors.blueGrey,
// filled: true,
// ),
// ),
// ],
// ),
// ),
// ####################################################
//22- stack code
// Container(
// padding: EdgeInsets.all(10),
// child: Stack(
// alignment: Alignment.center,
// children: [
// Container(width: 300,height: 300,color: Colors.red,),
// Container(width: 200,height: 200,color: Colors.blue,),
// Container(width: 100,height: 100,color: Colors.yellow,),
// Text("Amany"),
// ],
// ),
//
//
// ),
// #####################################
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