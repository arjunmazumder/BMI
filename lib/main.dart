import 'package:project3/bmi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Body mass index',
      theme: ThemeData(),
      home: MyHomePage(),
    );

  }

}
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }

}
class _MyHomePage extends State <MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(child: Text('BMI', style: TextStyle(
            fontSize: 25,
            fontWeight:FontWeight.w700,
          color: Colors.white,
        ),
        )
        ),
      ),
      body: DefineBmi(),
    );
  }



}