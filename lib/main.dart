import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

List<CameraDescription> cameras;
Future<Null> main() async{
  cameras = await availableCameras(); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      home: HomePage(cameras),
    );
  }
}