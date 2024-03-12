import 'package:flutter/material.dart';

import 'presentation/home_Page.dart';

void main() {
 runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   title: 'Flutter demo' ,
   theme: ThemeData(
     primaryColor: Colors.blue,
     colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
   ),

   home: HomePage(),
    );
  }
}










