import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
class InsideEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title:Text("Event Details",style: TextStyle(fontFamily: 'COMIC'),),
        backgroundColorStart: Colors.cyan,
        backgroundColorEnd: Colors.purpleAccent,
      ),
      body:Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Colors.white, Colors.white],
    ),
    ),
    child:Center(
    child:Column(
      children: <Widget>[
        Image.asset("Images/startup.jpg",height: 100,width: 500,fit: BoxFit.fitWidth,),
        Padding(padding: EdgeInsets.all(15.0),),
        new Text("Event Details:-",
          textAlign: TextAlign.left,
          style:TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          fontSize:25.0,
        ),),
          Divider(color: Colors.black,indent: 20,endIndent: 20,),

          SizedBox(height: 25.0,),
        Flexible(

          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child:
              new SingleChildScrollView(
                child: new Text(" It is an online Event where all ideas realted to social ,econonomical and technological will be hunted by all participants and the one who hit the target well is selected as winner ",
                        style: TextStyle(
                            fontSize: 21.0
                        ),
                      ),
                    ),),



                  ],


          ),
        ),




],
    ),
    ),

      ),
    );


  }
}
