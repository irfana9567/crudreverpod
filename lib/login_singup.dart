import 'package:crud/colorconst.dart';
import 'package:crud/imageconst.dart';
import 'package:crud/login.dart';
import 'package:crud/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({super.key});

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: h*1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(height: h*0.03,),
                  Padding(
                    padding:  EdgeInsets.all( w*0.05),
                    child: Container(
                      height: w*1,
                        width: w*0.9,
                        child: Image.asset(ImageConst.cruddy)),
                  )
                ],
              ),
              Column(
                children: [
                  Text("CRUD",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: w*0.08,
                    color: Colorconst.primarycolor
                  ),),
                  SizedBox(height:w*0.03),
                  Text("Create, Read, Update ,Delete",style: TextStyle(color: Colorconst.primarycolor),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>Login(),));
                  },
                  child: Container(
                    height: w*0.1,
                    width: w*0.5,
                    decoration: BoxDecoration(
                      color: Colorconst.primarycolor,
                      borderRadius: BorderRadius.circular(w*0.05)
                    ),
                    child: Center(
                      child: Text("Login",style: TextStyle(
                        color: Colorconst.white,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),
                ),
                  SizedBox(height: w*0.04,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>Signup(),));
                    },
                    child: Container(
                      height: w*0.1,
                      width: w*0.5,
                      decoration: BoxDecoration(
                          color: Colorconst.white,
                          borderRadius: BorderRadius.circular(w*0.05),
                        border: Border.all(color: Colorconst.primarycolor)

                      ),
                      child: Center(
                        child: Text("sign up",style: TextStyle(
                            color: Colorconst.primarycolor,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
