import 'package:crud/colorconst.dart';
import 'package:crud/imageconst.dart';
import 'package:crud/number.dart';
import 'package:crud/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool a=false;
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colorconst.white,
        title: Text(
          "CRUD",
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: w * 0.05,
              color: Colorconst.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(w * 0.05),
              child: Container(
                  height: w * 1,
                  width: w * 0.9,
                  child: Image.asset(ImageConst.login)),
            ),
         Column(
           children: [
             Padding(
               padding:  EdgeInsets.all(w*0.05),
               child: Container(
                 width: w * 0.9,
                 height: w * 0.13,
                 decoration: BoxDecoration(
                   // border: Border.all(color: Colorconst.primarycolor),
                   // borderRadius:
                   color: Colorconst.white,
                 ),
                 child: TextFormField(
    controller: name,
    autovalidateMode:
    AutovalidateMode.onUserInteraction,
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.newline,
    decoration: InputDecoration(

    label: Text("user name",
    style: TextStyle(
    color: Colorconst.black,
    fontSize: w * 0.05),),
      focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
      enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
    )),
               ),
             ),
             Padding(
               padding:  EdgeInsets.all(w*0.05),
               child: Container(
                 width: w * 0.9,
                 height: w * 0.13,
                 decoration: BoxDecoration(
                   // border: Border.all(color: Colorconst.primarycolor),
                   // borderRadius:
                   color: Colorconst.white,
                 ),
                 child: TextFormField(
                     controller: password,
                     keyboardType: TextInputType.text,
                     autovalidateMode:
                     AutovalidateMode.onUserInteraction,
                     textInputAction: TextInputAction.newline,

                     decoration: InputDecoration(
                       suffixIcon:InkWell(
                           onTap: () {
                             a=!a;
                             setState(() {

                             });
                           },
                           child: Icon(a?Icons.visibility:Icons.visibility_off)),
                       label: Text("password",
                         style: TextStyle(
                             color: Colorconst.black,
                             fontSize: w * 0.05),),
                       focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                       enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                     )),
               ),
             ),
             
           ],
         ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: w*0.13,
                  width: w*0.7,
                  decoration: BoxDecoration(
                      color: Colorconst.white,
                      borderRadius: BorderRadius.circular(w*0.06),
                      border: Border.all(color: Colorconst.primarycolor)

                  ),

                  child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.lock_outline_rounded),

                      Text("login",style: TextStyle(
                          color: Colorconst.primarycolor,
                          fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: w*0.04,),
                Container(
                  height: w*0.13,
                  width: w*0.7,
                  decoration: BoxDecoration(
                      color: Colorconst.white,
                      borderRadius: BorderRadius.circular(w*0.06),
                      border: Border.all(color: Colorconst.primarycolor)

                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

SvgPicture.asset(ImageConst.google),
                      Text(" Sign in with Google",style: TextStyle(
                          color: Colorconst.primarycolor,
                          fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: w*0.04,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>Number(),));
                  },
                  child: Container(
                    height: w*0.13,
                    width: w*0.7,
                    decoration: BoxDecoration(
                        color: Colorconst.white,
                        borderRadius: BorderRadius.circular(w*0.06),
                        border: Border.all(color: Colorconst.primarycolor)

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                       Icon(Icons.phone),
                        Text(" OTP sign in",style: TextStyle(
                            color: Colorconst.primarycolor,
                            fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(w*0.05),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>Signup(),));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account ?",style: TextStyle(
                        color: Colorconst.primarycolor,
                        fontWeight: FontWeight.w600
                    ),),
                    Text("Create Now",style: TextStyle(
                        color: Colorconst.primarycolor,
                        fontWeight: FontWeight.w900,
                      fontSize: w*0.04
                    ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
