import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
//import 'package:pinch_zoom_image/pinch_zoom_image.dart';
class Incubation extends StatefulWidget {
  @override
  _IncubationState createState() => _IncubationState();
}

class _IncubationState extends State<Incubation> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
        appBar:GradientAppBar(
        title: Text("Incubation and Innovation Centre",
        style: TextStyle(
        fontFamily: 'COMIC',
        fontSize: 15.0,
    ),),
    backgroundColorStart: Colors.cyan,
    backgroundColorEnd: Colors.purpleAccent,
    ),
    body:
    PageView(
      children: <Widget>[
        Container(
          child: Image.asset('Images2/1.0.jpg',height: 110,fit: BoxFit.fitWidth,),
        ),
        Container(
          child: Image.asset('Images2/1.1.jpg',fit: BoxFit.cover,),
          ),

        Container(
          child: Image.asset('Images2/1.2.jpg',fit: BoxFit.cover,),
        ),
        Container(
          child: Image.asset('Images2/1.3.jpg',fit: BoxFit.cover,),
        ),
        Container(
          child: Image.asset('Images2/1.4.jpg' ,fit: BoxFit.cover,),
        ),
        Container(
          child: Image.asset('Images2/1.5.jpg',fit: BoxFit.cover,),
        ),

        Container(
          child: Image.asset('Images2/1.6.jpg',fit: BoxFit.cover,),
        ),

        Container(
          child: Image.asset('Images2/1.7.jpg',fit: BoxFit.cover,),
        ),
        Container(
          child: Image.asset('Images2/1.8.jpg',fit: BoxFit.cover,),

        ),
        Container(
          child: Image.asset('Images2/1.9.jpg',fit: BoxFit.cover,),
        ),
        Container(
          child: Image.asset('Images2/1.10.jpg',fit: BoxFit.cover,),
        ),
        Container(
          child: Image.asset('Images2/1.11.jpg',fit: BoxFit.cover,),
        ),
        Container(
          child: Image.asset('Images2/1.12.jpg',fit: BoxFit.cover,),
        ),

      ],
      scrollDirection: Axis.vertical,
      pageSnapping: true,
      physics: ClampingScrollPhysics(),
    ),

  );
  }
}



