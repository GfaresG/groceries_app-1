import 'dart:async';

import 'package:flutter/material.dart';

import 'onbording_screen.dart';
class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
return OnBording();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:Color(0xff53B175) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.all(50),
          child: Row(children: [
            Image.asset("assets/images/Group.png"),
            SizedBox(width: 10,),
            Column(children: [
              Image.asset("assets/images/word.png"),
              Text("o n l i n e  g r o c e r i e t",style: TextStyle(fontSize: 14,color: Colors.white,fontFamily: "space", ),)
            ],)
          ],),
        )
      ],),
    ) ;
  }
}