

import 'package:flutter/cupertino.dart';
class Question extends StatelessWidget {

 var ques;
 Color b;
  Question(this.ques,this.b);
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.only(left: 30,right: 30,top: 50,bottom: 30),
     child: Container(
       width: double.infinity,
       margin:const EdgeInsets.all(14),
       child:  Text(ques,
         style: TextStyle(fontSize: 25,
         color: b
         ),
         textAlign: TextAlign.center,
       ),
     ),
   );
  }
}
