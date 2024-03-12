
import 'package:flutter/material.dart';
import 'package:proba/presentation/process_Screen.dart';
import 'package:proba/presentation/result_Screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final writeUrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('HomePage'),
      ),
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Container(

            child: Text('Firs'),),

        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 50),
          child: TextField(
            controller: writeUrl,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 400,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Theme
                  .of(context)
                  .primaryColor),
              onPressed: () {
                goToResultScreen();
              },
              child: Text(
                'WriteApi', style: TextStyle(color: Colors.black),),),),
        )
      ],),

    );
  }

  dynamic goToResultScreen() {
    Route route = MaterialPageRoute(builder: (context) => ProcessScreen());
    Navigator.push(context, route);
  }
}