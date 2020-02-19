import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:startup_cell_practise2/Events.dart';
import 'package:url_launcher/url_launcher.dart';
class TeamList extends StatelessWidget {
 // ignore: missing_return, non_constant_identifier_names
   Email(String email) async {
    // Android and iOS
    var uri = 'mailto:$email?subject=FeedBack&body=whats the issue?';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
   Call(String number) async {
     // Android
     var uri = 'tel:$number';
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

        title: Text("Team",

        style: TextStyle(
        fontFamily: 'COMIC',
        fontSize: 15.0,
    ),),
    backgroundColorStart: Colors.cyan,
    backgroundColorEnd: Colors.purpleAccent,
    ) ,
    body:
    Column(
      children: <Widget>[
        Image.asset('Images/startup.jpg',fit: BoxFit.fitWidth,height:95.0,width: 350,),
        Expanded(child:
    GridView.count(crossAxisCount: 2,
      childAspectRatio: 0.7,
      mainAxisSpacing: 35,
      crossAxisSpacing: 20,
      children: <Widget>[

        GridTile(
          child:
          Myteam(text:"Shruti Mishra",image: Image.asset("Team/11.jpg",fit:BoxFit.fitWidth),number: "6306193910",email: "shrutichandumishra@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"Abhishek Gaur",image: Image.asset("Team/12.jpg",fit:BoxFit.fitWidth),number: "7007345081",email: "1009abhishek@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"Mukul Jataria",image: Image.asset("Team/13.jpg",fit:BoxFit.fitWidth),number: "9076782250",email: "mukuljataria0723@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"Arya Bajpai",image: Image.asset("Team/15.jpg",fit:BoxFit.fitWidth),number: "9140261842",email: "aryabajpai991@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"Yogesh Kumar",image: Image.asset("Team/14.jpg",fit:BoxFit.fitWidth),number: "8218629990",email: "ykt901694@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"Shreyash Kumar",image: Image.asset("Team/16.jpg",fit:BoxFit.fitWidth),number: "8542093507",email: "shreyashunknown@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"Anshuman B gupta",image: Image.asset("Team/17.jpg",fit:BoxFit.fitWidth),number: "9455514411",email: "abg040799@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
      child:
       Myteam(text:"Mohd.Shoeb",image: Image.asset("Team/1.jpg",fit:BoxFit.fitWidth),number: "9453598400",email: "shoeb999mohd@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"Shubham Shekhar",image: Image.asset("Team/2.jpg",fit: BoxFit.fitWidth,),number: "945358400",email: "Imshubham224@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"Muskan Bharti",image: Image.asset("Team/3.jpg",fit: BoxFit.fitWidth,),number: "7052731948",email: "muskanbharti710@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"Swati Verma",image: Image.asset("Team/4.jpg",fit: BoxFit.fitWidth,),number: "6388788187",email: "vermswati49@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"Shailja",image: Image.asset("Team/5.jpg",fit: BoxFit.fitWidth,),number: "9598251625",email: "shailjatwr17@gmail.com",icon1:Icons.call,icon2: Icons.email,),),

        GridTile(
          child:
          Myteam(text:"Nikki Gupta",image: Image.asset("Team/6.jpg",fit: BoxFit.fitWidth,),number: "9918241523",email: "nikki0099gupta@gmail.com",icon1:Icons.call,icon2: Icons.email,),),

        GridTile(
          child:
          Myteam(text:"Shradha Ojha",image: Image.asset("Team/7.jpg",fit: BoxFit.fitWidth,),number: "9454767870",email: "shradhaojha20799@gmail.com",icon1:Icons.call,icon2: Icons.email,),),

        GridTile(
          child:
          Myteam(text:"Nikita",image: Image.asset("Team/9.jpg",fit: BoxFit.fitWidth,),number: "7310886219",email: "nitikavyas99@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"DeshDeep",image: Image.asset("Team/8.jpg",fit: BoxFit.fitWidth,),number: "8004024993",email: "deshdeepsrivastava@gmail.com",icon1:Icons.call,icon2: Icons.email,),),
        GridTile(
          child:
          Myteam(text:"Anushka Singh",image: Image.asset("Team/10.jpg",fit: BoxFit.fitWidth,),number: "6307249656",email: "anushkasingh71426@gmail.com",icon1:Icons.call,icon2: Icons.email,),),

      ],
    ), ),],
    ),
  );
  }
}


class Myteam extends StatelessWidget {
  final String text;
  final String number;
  final String email;
  final Image image;
  final IconData icon1;
  final IconData icon2;

  Myteam({this.text,this.image,this.icon1,this.icon2,this.email,this.number,});
TeamList a=new TeamList();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        elevation: 15.0,
        color:Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Padding(padding: EdgeInsets.all(15.0),),
            Expanded(child:InkWell(child: image,),),
           SizedBox(height: 5.0,),
           new Text(text,style: TextStyle(fontFamily: 'COMIC'),textAlign: TextAlign.left,),
            Row(children:<Widget> [
              IconButton(icon: Icon(icon1,color: Colors.blueAccent,),onPressed:() => a.Call(number),),
              Text(number,style: TextStyle(fontFamily: 'COMIC',),)
            ],),
              IconButton(icon: Icon(icon2,color: Colors.blueAccent,),onPressed:() => a.Email(email),),

        ],
        ),

      ),
    );
  }
}

