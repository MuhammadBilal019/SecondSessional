import 'package:flutter/material.dart';
import 'dart:math';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'ContainQuestion.dart';

int flag=0;

class Hard extends StatefulWidget {
  @override
  _State createState() => _State();

}
class _State extends State<Hard> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Hard'),
          backgroundColor: Colors.grey.shade900,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Check(),
            ],
          ),


        ),
      ),
    );
  }

}

class Check extends StatefulWidget {
  @override
  _checkState createState() => _checkState();
}

class _checkState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: flag%2==0? ContainDice():ContainQuestion(),
    );
  }
}


class ContainDice extends StatefulWidget {
  @override
  _ContainState createState() => _ContainState();
}

class _ContainState extends State<ContainDice> {
  int LeftButton = 1;
  int RightButton = 1;
  int countleft=0;
  int countright=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
          onPressed: () {
            setState(() {

              RandNum();
            });
          },
          child: Image.asset('Assets/dice$LeftButton.png')
      ),
    );
  }
  void RandNum(){
    LeftButton = Random().nextInt(6) + 1;
    countleft=countleft+LeftButton;
    flag++;
    answer=LeftButton;
    if(right+wrong==5){
      if(right>wrong){
        Alert(
          context: context,
          title: 'Result',
          desc:
          'You Win',
        ).show();
      }
      else{
        Alert(
          context: context,
          title: 'Result',
          desc:
          'You Loss',
        ).show();
      }
      right=0;
      wrong=0;
    }
    else{
      Hard();
    }

  }
}




