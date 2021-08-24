import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constant.dart';
class Resultpage extends StatelessWidget {
  Resultpage({this.bmiresult,this.result,this.interpretation});
  final String bmiresult;
  final String result;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Text('YOUR RESULT',style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ) ,)),
          Expanded(flex:5,child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Text(result.toUpperCase(),style: TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.bold,),),
            Text(bmiresult,style:kNumberstyle,),
            Text(interpretation,textAlign: TextAlign.center,style:TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,),),
          ],),),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InputPage(),));
            },
            child: Container(
              child: Center(child: Text('RE-CALCULATE',style: kIcontextstyle,)),
              width: double.infinity,
              height: 80,
              color: kBottomcontainercolour,
              margin: EdgeInsets.only(top: 10),
            ),
          ),
        ],
      ),
    );
  }
}
