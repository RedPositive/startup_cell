import 'package:flutter/material.dart';
import 'HomePage.dart';
void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      title: "Startup Cell",

      home:new HomePage(),
    );

  }
}

/*
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => new HomePage())));
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('Images/12345.png'),
      ),
    );
  }
}*/






