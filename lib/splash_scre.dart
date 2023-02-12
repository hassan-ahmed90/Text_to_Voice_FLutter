import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';
 class SplashScreen extends StatefulWidget {
   const SplashScreen({Key? key}) : super(key: key);

   @override
   State<SplashScreen> createState() => _SplashScreenState();
 }


 class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> TextSpeech()));
    });
  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.green,
       body: Center(
         child: Text("Voice Over Ap",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
       ),
     );
   }
 }
