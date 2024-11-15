// ignore_for_file: avoid_unnecessary_containers

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mkart_app/screens/auth-ui/welcome-screen.dart';
//import 'package:mkart_app/screens/user-panel/main-screen.dart';
import 'package:mkart_app/utils/apps-constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();  
  Future.delayed(Duration(seconds: 3), () {
    Get.offAll(() => WelcomeScreen());
  });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    //final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConstant.appSecondaryColor,
      appBar: AppBar(
      backgroundColor: AppConstant.appSecondaryColor,
      elevation: 0,
    ),
      body: Container(       
        child: Column(
          children: [
            
            Expanded(
                child: Container(
                      width: 250.0,
                      alignment: Alignment.center,
                      height:150.0,
                      child: Lottie.asset('assets/images/splash-icon.json'),                    
                    ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  width: Get.width,
                  alignment: Alignment.center,
                  child: Text(
                    
                    AppConstant.appPoweredBy,
                    style: TextStyle(color: AppConstant.appTextColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
                ),
                )
          ],
        ),


      ),
    ); 
  }
}