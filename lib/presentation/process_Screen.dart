
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proba/presentation/result_Screen.dart';

import '../repository/get_api.dart';

class ProcessScreen extends StatefulWidget {
  const ProcessScreen({Key? key}) : super(key: key);

  @override
  State<ProcessScreen> createState() => _ProcessScreenState();
}

class _ProcessScreenState extends State<ProcessScreen> {
  @override

  Widget build(BuildContext context) {
    GetApi().getApi();
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('ProcessScreen'),
    ),
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Container(

            child: Text('Firs'),),

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
                'SendResultsToServer', style: TextStyle(color: Colors.black),),),),
        )
      ],),
    );
  }
  dynamic goToResultScreen() {
    Route route = MaterialPageRoute(builder: (context) => ResultScreen());
    Navigator.push(context, route);
  }
}
