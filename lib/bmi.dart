
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefineBmi extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DefineBmi();
  }

}
class _DefineBmi extends State<DefineBmi>{
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  var bmi = "";
  var bgColor = Colors.cyanAccent.shade100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 320,

            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: wtController,
                decoration: InputDecoration(
                  label: Text('Enter Your Weight(in kgs)', style: TextStyle(fontSize: 18),),
                  prefixIcon: Icon(Icons.line_weight)
                ),
              ),
              SizedBox(height: 12,),
              TextField(
                keyboardType: TextInputType.number,
                controller: ftController,
                decoration: InputDecoration(
                  label: Text('Enter your Height(in foots)', style: TextStyle(fontSize: 18),),
                  prefixIcon: Icon(Icons.height)
                ),
              ),
              SizedBox(height: 12,),
              TextField(
                keyboardType: TextInputType.number,
                controller: inController,
                decoration: InputDecoration(
                  label: Text("Enter your Height(in inchs)", style: TextStyle(fontSize: 18),),
                  prefixIcon: Icon(Icons.height),
                ),
                ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                var wt = wtController.text.toString();
                var ft = ftController.text.toString();
                var inch = inController.text.toString();
                if(wt != "" && ft != "" && inch != ""){
                  var iwt = int.parse(wt);
                  var ift = int.parse(ft);
                  var iInch = int.parse(inch);
                  var Tinch = (ift*12)+iInch;
                  var cm = Tinch*2.54;
                  var meter = cm/100;
                  var bmi = iwt/(meter*meter);
                  var msg = "";
                  if(bmi>25){
                    msg = "You are OverWeight!!!";
                    bgColor = Colors.red.shade300;
                  }
                  else if(bmi<18){
                    msg = "You are UnderWeight!!!";
                    bgColor = Colors.yellowAccent.shade200;
                  }
                  else{
                    msg = "You are Healthy!!!";
                    bgColor = Colors.green.shade200;
                  }

                  setState(() {
                    result = "$msg \n Your BMI is : ${bmi.toStringAsFixed(2)}";
                  }
                  );

                }
                else{
                  setState(() {
                    result = "Please fill all the repuired blsnks!!";
                  });
                }
              }, child: Text('Calculate',style: TextStyle(fontSize: 25,color: Colors.teal),)),
              SizedBox(height: 20,),

              Text(result, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

              /*Text('Click NEXT to get more informaition about your health.',style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              ),
              SizedBox(height: 12,),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BmiDetails(
                      result
                    )
                    )
                );
              }, child: Text('NEXT', style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),))*/

              ],

            ),
          ),
        ),
      ),
    );
  }

}