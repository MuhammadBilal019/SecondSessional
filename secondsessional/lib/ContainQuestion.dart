import 'package:flutter/material.dart';

int answer;
int result;
int right=0;
int wrong=0;
class ContainQuestion extends StatefulWidget {
  @override
  _ContainQuestionState createState() => _ContainQuestionState();
}

class _ContainQuestionState extends State<ContainQuestion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                'Guess the Dice Number',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: RaisedButton(
                        onPressed: (){
                          if(answer==1){
                            right++;
                            result=answer;
                          }
                          else{
                            wrong++;
                          }
                        },
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Expanded(
                      child: RaisedButton(
                        onPressed: (){
                          if(answer==1){
                            right++;
                            result=answer;
                          }
                          else{
                            wrong++;
                          }
                        },
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Expanded(
                      child: RaisedButton(
                        onPressed: (){
                          if(answer==1){
                            right++;
                            result=answer;
                          }
                          else{
                            wrong++;
                          }
                        },
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),

                ],
              ),
              SizedBox(
                height: 20.0,
                width: 400.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: RaisedButton(
                        onPressed: (){
                          if(answer==1){
                            right++;
                            result=answer;
                          }
                          else{
                            wrong++;
                          }
                        },
                        child: Text(
                          '4',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Expanded(
                      child: RaisedButton(
                        onPressed: (){
                          if(answer==1){
                            right++;
                            result=answer;
                          }
                          else{
                            wrong++;
                          }
                        },
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Expanded(
                      child: RaisedButton(
                        onPressed: (){
                          if(answer==1){
                            right++;
                            result=answer;
                          }
                          else{
                            wrong++;
                          }
                        },
                        child: Text(
                          '6',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
