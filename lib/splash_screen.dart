import 'package:crud/colorconst.dart';
import 'package:crud/login_singup.dart';
import 'package:crud/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(Duration(seconds: 4)).then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginSignup(),), (route) => false));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconst.primarycolor,
      body: Center(
        child: Text("CRUD",
        style: TextStyle(fontWeight: FontWeight.w800,color: Colorconst.white,fontSize: w*0.15),),
      ),
    );
  }
}
