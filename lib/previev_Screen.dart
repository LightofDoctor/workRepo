
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  State<PreviewScreen> createState() => _PreviewSreenState();
}

class _PreviewSreenState extends State<PreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('PreviewScreen'),),);
  }
}
