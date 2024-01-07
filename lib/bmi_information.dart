import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiDetails extends StatefulWidget {

  var Bmi;
  BmiDetails(
      this.Bmi
      );

  @override
  State<BmiDetails> createState() => _BmiDetailsState();
}

class _BmiDetailsState extends State<BmiDetails> {
  @override
  Widget build(BuildContext context) {
    var result = int.parse(widget.Bmi);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent.shade100,
      ),
      body: Text('result')

    );
  }
}