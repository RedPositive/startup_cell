import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:startup_cell_practise2/InsideEvent.dart';
import 'package:startup_cell_practise2/inside_goverment.dart';
import 'Contacts1.dart';
import 'InsideEvent.dart';
class EventsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:GradientAppBar(
        title: Text("Events",
          style: TextStyle(
            fontFamily: 'COMIC',
            fontSize: 15.0,
          ),),
        backgroundColorStart: Colors.cyan,
        backgroundColorEnd: Colors.purpleAccent,
      ) ,
        body:  ListView(
    children:<Widget>[
    Image.asset('Images/startup.jpg',height:115.0,fit: BoxFit.fitWidth,),
    /*  new Card(
        elevation: 10.0,margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
        color:Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        child:  Column(children: <Widget>[
          new Text("Hi Event2"),
          Image.asset('Images/12345.png')
        ],),

      ),*/
      new Card(
        elevation: 10.0,
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 00.0, 20.0),
        color:Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        child:InkWell(child:
        Column(children: <Widget>[
          Image.asset('Images/Event1.jpg' ,fit: BoxFit.cover,),
          SizedBox(height: 20.0,),


        ],),

          onTap:(){

    // Navigator.pushReplacementNamed(context, "ContactDetails()");
    Navigator.push(context, MaterialPageRoute(
    builder: (context)=>InsideEvent()
    ),
    ); //Navigator.of(context).pop();
    // Navigator.pop(context);


        },
        ),


      ),
      new Card(
        elevation: 10.0,margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
        color:Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        child:  Column(children: <Widget>[
          new Text("Hi Event2"),
          Image.asset('Images/12345.png')
        ],),
      ),
      new Card(
        elevation: 10.0,margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
        color:Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        child:  Column(children: <Widget>[
          new Text("Hi Event3"),
          Image.asset('Images/12345.png')
        ],),
      ),



    ],),












    );

  }
}
