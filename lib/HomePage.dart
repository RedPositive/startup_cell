import 'package:carousel_slider/carousel_slider.dart';
import 'package:pinch_zoom_image/pinch_zoom_image.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:startup_cell_practise2/Incubation_and_Innovation_Centre.dart';
import 'package:startup_cell_practise2/Team.dart';
import 'package:startup_cell_practise2/inside_goverment.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Contacts.dart';
import 'Contacts1.dart';
import 'Events.dart';
import 'package:marquee/marquee.dart';
import 'inside_goverment.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _sendMail() async {
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
      appBar:GradientAppBar(
        title: Text("Startup cell",
            style: TextStyle(
              fontFamily: 'COMIC',
              fontSize: 15.0,
            ),),
        backgroundColorStart: Colors.cyan,
        backgroundColorEnd: Colors.purpleAccent,
      ) ,
      drawer: new Drawer(
        child:ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo,),
              accountName: new Text("Gaurang Gupta",style: TextStyle(
                fontFamily: 'COMIC',
              ),),
              accountEmail: new Text("officialgaurang2801@gmail.com",style: TextStyle(
                fontFamily: 'COMIC',
              ),),
              currentAccountPicture:CircleAvatar(
                child: Image.asset('Images/startup.jpg',),
                radius: 54.0,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(child:Image.asset('Images/download.jfif',fit: BoxFit.cover,height:75,width: 75,),),
              ],

            ),
            ListTile(
                leading: Icon(Icons.calendar_today),
                title:new Text("EVENTS ",style: TextStyle(
                  fontFamily: 'COMIC',
                ),),
                trailing: Icon(Icons.arrow_right),


                onTap: (){
                  Navigator.of(context).pop();
                  // Navigator.pushReplacementNamed(context, "ContactDetails()");
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>EventsList(),
                  ),);
                }
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.laptop_chromebook),
              title:new Text("INDIAN GOVERNMENT SCHEMES FOR ENTREPRENEURERS",style: TextStyle(
                fontFamily: 'COMIC',
              ),),
              trailing: Icon(Icons.arrow_right),
                onTap: (){
                  Navigator.of(context).pop();
                  // Navigator.pushReplacementNamed(context, "ContactDetails()");
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>InsideGovernment(),
                  ),);

                },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_balance),
              title:new Text("INCUBATION AND INNOVATION CENTRE",style: TextStyle(
                fontFamily: 'COMIC',
              ),),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.of(context).pop();
                // Navigator.pushReplacementNamed(context, "ContactDetails()");
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Incubation(),
                ),);

                },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.group),
              title:new Text("TEAM",style: TextStyle(
                fontFamily: 'COMIC',
              ),),
              trailing: Icon(Icons.arrow_right),
                onTap: (){
                  Navigator.of(context).pop();
                  // Navigator.pushReplacementNamed(context, "ContactDetails()");
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>TeamList(),
                  ),);
                  // Navigator.pop(context);

                }
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.contacts),
              title:new Text("CONTACT",style: TextStyle(
                fontFamily: 'COMIC',
              ),),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.of(context).pop();
               // Navigator.pushReplacementNamed(context, "ContactDetails()");
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>ContactDetails1()
              ),);
             // Navigator.pop(context);

              }


                //Navigator.pop(context);

//                Navigator.push(context,MaterialPageRoute(
//                  builder: (context)=>ContactDetails()
//                ),);

            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.feedback),
              title:new Text("FEEDBACK",style: TextStyle(
                fontFamily: 'COMIC',
              ),),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                _sendMail();
                Navigator.pop(context);},

            ),

            SizedBox(height: 15.0,),
            ListTile(
              title:new Text("^1.0.1",style: TextStyle(fontSize: 15.0,),),
            ),
          ],),
      ),
      body:new Container(
        child:
        Column(
          children: <Widget>[
            CarouselSlider(
              items: <Widget>[
                PinchZoomImage(
                  image: Image.asset('Team/news.png',fit: BoxFit.fitWidth,),
                  zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
                  hideStatusBarWhileZooming: false,
                ),
                PinchZoomImage(
                  image: Image.asset('Team/news2.jpg',fit: BoxFit.fitWidth),
                  zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
                  hideStatusBarWhileZooming: false,
                ),
                PinchZoomImage(
                  image: Image.asset('Team/news5.jpg',fit: BoxFit.fitWidth),
                  zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
                  hideStatusBarWhileZooming: false,
                ),
                PinchZoomImage(
                  image: Image.asset('Team/news4.jpg',fit: BoxFit.fitWidth),
                  zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
                  hideStatusBarWhileZooming: false,
                ),
              ],
              scrollDirection: Axis.horizontal,
              // autoPlayInterval: Duration(seconds: 1),
              //autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 1.5,
            ),
     Center(
    child: RichText(
    text: TextSpan(
    text: 'Important Notice', style: TextStyle(color: Colors.red, fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 2.0),),),)
          ],
        ),),

      /*Column(
        children: <Widget>[
          Image.asset("Images/startup.jpg",height: 100,width: 500,fit: BoxFit.fitWidth,),

        ],

      ),
*/







      /*Center(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.white, Colors.white],
        ),
      ),
    ),),*/
    );
  }
}




