import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
class ContactDetails extends StatelessWidget {
  void CallMe(){}
  void MesageMe(){}
  void EmailMe(){}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:GradientAppBar(

          title:Text("Contacts",style: TextStyle(
            fontFamily: 'COMIC',
          ),),
          backgroundColorStart: Colors.cyan,
          backgroundColorEnd: Colors.purpleAccent,
        ),

      body:
       new Column(
         children: <Widget>[
          Image.asset('Images/1.jfif'),
         SizedBox(height: 20.0,),
         new Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             IconButton(icon:Icon(Icons.call,color: Colors.blueAccent),onPressed:CallMe),
             new Text("12345678900",style: TextStyle(
               fontSize: 26.0,
               fontFamily: 'COMIC',
             ),),
             IconButton(icon:Icon(Icons.message,color: Colors.blueAccent,),onPressed: MesageMe,),
           ],
         ),
           new Row(

             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               IconButton(icon:Icon(Icons.email,color: Colors.blueAccent),onPressed:EmailMe),
               new Expanded(child:
               new Text("gauranggupta2801@gmail.com",style: TextStyle(
                 fontSize: 22.0,
                 fontFamily: 'COMIC',),
               ),),

             ],
           ),
        ],
      ),
    );
  }
}
