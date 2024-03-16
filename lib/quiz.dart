

import 'package:flutter/material.dart';
import 'package:quize_app/questions.dart';
import 'answer.dart';
class Quize extends StatefulWidget {
  const Quize({super.key});

  @override
  State<Quize> createState() => _QuizeState();
}

class _QuizeState extends State<Quize> {

  int questionIndex=0;
  int totalScore=0;
  bool switchb=false;
  Color w=Colors.white;
  Color b=Colors.black;
  var question=[
    {
      'id':  "What’s your favorite programming language?",
      'answer':[
        {'text': 'Flutter','score':10},
        {'text': 'C++','score':0}, {'text': 'Python','score':0}, {'text': 'Java','score':0}]
    },
    {
      'id': "What’s your favorite animal?",
      'answer':[{'text': 'cat','score':10}, {'text': 'dog','score':0}, {'text': 'caw','score':0},
        {'text': 'bird','score':0}]
    },

    {
      'id':  "What’s your favorite programming language?",
      'answer':[
        {'text': 'Flutter','score':10},
        {'text': 'C++','score':0}, {'text': 'Python','score':0}, {'text': 'Java','score':0}]
    },

  ];
  void x(int score)
  {
    totalScore+=score;
    setState(() {
      questionIndex++;

    });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:const Text("Quiz app",style: TextStyle(fontSize: 25),),
        actions: [
          Switch(value:switchb , onChanged: (value){
            setState(() {
              switchb=value;
              if(switchb==true)
                {
                  b=Colors.white;
                  w=Colors.black;
                }
              if(switchb==false)
              {
                w=Colors.white;
                b=Colors.black;
              }
            });
          },
            inactiveThumbColor: Colors.black,
            activeColor: Colors.white,
            inactiveTrackColor:Colors.black,
          )

        ],
      ),

      body: questionIndex<question.length? Container(
        color: w,
        child: Column(
          children: [
              Question(question[questionIndex]['id'],b),
            ...(question[questionIndex]['answer'] as List<Map<String,Object>>).map(
                    (e) => Answer(()=>x(int.parse(e['score'].toString())), e['text'].toString())).toList(),
          ],
        ),
      ):
           Container(
             width: double.infinity,
             color: w,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("GOOD JOB !",style: TextStyle(fontSize: 40,color: b),),
                const SizedBox(height: 20,),
                Text("Your score is $totalScore",style: TextStyle(fontSize: 25,color: b),),
                TextButton(
                    onPressed: (){
                  setState(() {
                    questionIndex=0;
                    totalScore=0;
                  });
                  
                }, child: const Text("Try Again",style: TextStyle(fontSize: 25,color: Colors.teal)),
                ),

              ],
          ),
           ),


    );
  }
}

