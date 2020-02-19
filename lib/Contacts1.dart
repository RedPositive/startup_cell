import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';
class ContactDetails1 extends StatelessWidget {

  static const DirectorNo='+919415112424';
  static const AwadeshNo ='+91123456789';

  static const Cell ='+917905614919';


  CallBuddyDirector() async {
    // Android
    const uri = 'tel:$DirectorNo';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {

        throw 'Could not launch $uri';

    }
  }
  CallBuddyAwadesh() async {
    // Android
    const uri = 'tel:$AwadeshNo';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {

      throw 'Could not launch $uri';

    }
  }
  CallBuddyCell() async {
    // Android
    const uri = 'tel:$Cell';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {

      throw 'Could not launch $uri';

    }
  }

  EmailBuddyDirector() async {
    // Android and iOS
    const uri = 'mailto:officialgauarng@gmail.com?subject=FeedBack&body=You are awesome';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
  EmailBuddyCell() async {
    // Android and iOS
    const uri = 'mailto:officialgauarng@gmail.com?subject=FeedBack&body=You are awesome';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  EmailBuddyAwadesh() async {
    // Android and iOS
    const uri = 'mailto:officialgauarng@gmail.com?subject=FeedBack&body=You are awesome';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title:Text("Contact",style: TextStyle(fontFamily: 'COMIC'),),
        backgroundColorStart: Colors.cyan,
        backgroundColorEnd: Colors.purpleAccent,
      ),
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.deepOrange, Colors.yellow],
          ),
        ),


      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          child:ListView(
            children:<Widget>[
              Image.asset('Images/startup.jpg',height:115.0,fit: BoxFit.fitWidth,),
              new Card(
                elevation: 10.0,

                margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
                color:Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                child: Column(

                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(15.0),),

                    Image.asset('Images/download.jfif',height: 115.0,width: 185,),
                    SizedBox(height: 7.0,),
                    new Text("Startup cell Office(KNIT)",style: TextStyle(fontSize: 15,
                      fontFamily: 'COMIC',),textAlign: TextAlign.left,),
                    SizedBox(height:15.0 ,),

                    Row(children:<Widget> [
                      IconButton(icon: Icon(Icons.call,color: Colors.blueAccent,),onPressed: CallBuddyCell,),
                      Text("079056 14919",style: TextStyle(fontFamily: 'COMIC',),)
                    ],),
                    Row(children: [
                      IconButton(icon: Icon(Icons.email,color: Colors.blueAccent,),onPressed: EmailBuddyCell,),
                      Text("iisc.knit.sln@gmail.com",style: TextStyle(fontFamily: 'COMIC',),),
                    ],)],
                ),
              ),

       new Card(
         elevation: 10.0,

                 margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
                 color:Colors.white,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  child: Column(

                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(15.0),),

                    Image.asset('Images/director1.jpg',height: 115.0,width: 185,),
                      SizedBox(height: 7.0,),
                      new Text("Director:  Prof.J.P Pandey",style: TextStyle(fontSize: 15,
                      fontFamily: 'COMIC',),textAlign: TextAlign.left,),
                      SizedBox(height:15.0 ,),

                      Row(children:<Widget> [
                        IconButton(icon: Icon(Icons.call,color: Colors.blueAccent,),onPressed: CallBuddyDirector,),
                        Text("9415112424",style: TextStyle(fontFamily: 'COMIC',),)
                      ],),
                      Row(children: [
                        IconButton(icon: Icon(Icons.email,color: Colors.blueAccent,),onPressed: EmailBuddyDirector,),
                        Text("director@knit.ac.in",style: TextStyle(fontFamily: 'COMIC',),),
                      ],)],
                  ),
                ),
                new Card(
                  elevation: 10.0,
                  margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
                  color:Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(15.0),),Image.asset('Images/awadesh.jpg',height: 115,),
                      SizedBox(height: 7.0,),
                      new Text("Office In Charge:   Mr.Awadhesh kumar",style: TextStyle(fontFamily: 'COMIC'),textAlign: TextAlign.left,),
                      SizedBox(height:15.0 ,),

                      Row(children:<Widget> [
                        IconButton(icon: Icon(Icons.call,color: Colors.blueAccent,),onPressed: CallBuddyAwadesh,),
                        Text("123456789",style: TextStyle(fontFamily: 'COMIC',),)
                      ],),
                      Row(children: [
                        IconButton(icon: Icon(Icons.email,color: Colors.blueAccent,),onPressed: EmailBuddyAwadesh,),
                        Text("awadesh@knit.ac.in",style: TextStyle(fontFamily: 'COMIC',),),
                      ],)],
                  ),
                ),


            ],),),

            );

  }
}
