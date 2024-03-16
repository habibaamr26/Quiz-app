

import 'package:flutter/material.dart';

class Answer extends StatelessWidget
{
  String ans;
  final Function() function;
  Answer(this.function,this.ans);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: double.infinity,
          margin:const EdgeInsets.symmetric(horizontal: 15),
          child: ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),
              onPressed: function,
              child:
              Text(ans,style:
              const TextStyle(fontSize: 20,),
              )
          )
      ),
    );
  }

}