import 'dart:io';

import 'package:crud/colorconst.dart';
import 'package:crud/home_page.dart';
import 'package:crud/imageconst.dart';
import 'package:crud/login.dart';
import 'package:crud/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool a = false;
  bool b = false;
  var file;
  Future<void> pickimage(ImageSource a) async {
    ImagePicker imagePicker = ImagePicker();
    final imamefile = await imagePicker.pickImage(source: a);
    file = File(imamefile!.path);
    if (mounted) {
      file = File(imamefile.path);
      setState(() {});
    }
  }

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController confrimpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colorconst.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              height: w * 0.05,
              width: w * 0.05,
              //color: Colors.blueGrey,
              child: Center(
                  child: SvgPicture.asset(
                ImageConst.shape,
              ))),
        ),
        title: Text(
          "User Registration",
          style:
              TextStyle(fontWeight: FontWeight.w800, color: Colorconst.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(children: [
                  Center(
                    child: file == null
                        ? CircleAvatar(
                            radius: w * 0.2,
                            backgroundImage: AssetImage(ImageConst.ellipse))
                        : CircleAvatar(
                            radius: w * 0.2,
                            backgroundImage: FileImage(file),
                          ),
                  ),
                  Positioned(
                    top: w * 0.24,
                    left: w * 0.6,
                    child: InkWell(
                      onTap: () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) {
                            return CupertinoActionSheet(
                              actions: [
                                CupertinoActionSheetAction(
                                    onPressed: () {
                                      pickimage(ImageSource.gallery);
                                      Navigator.pop(context);
                                    },
                                    child: Text("Gallery Photos")),
                                CupertinoActionSheetAction(
                                    onPressed: () {
                                      pickimage(ImageSource.camera);
                                      Navigator.pop(context);
                                    },
                                    child: Text("Camera")),
                              ],
                              cancelButton: CupertinoActionSheetAction(
                                onPressed: () {
                                  Navigator.pop(context);
                                  setState(() {});
                                },
                                child: Text("cancel"),
                              ),
                            );
                          },
                        );
                      },
                      child: CircleAvatar(
                        radius: w * 0.06,
                        backgroundColor: Colorconst.primarycolor,
                        child: SvgPicture.asset(ImageConst.edit),
                      ),
                    ),
                  )
                ])
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(w * 0.05),
                  child: TextFormField(
                      controller: name,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.newline,

                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colorconst.lightgrey,
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.person),
                        hintText: "full name",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            borderSide:
                                BorderSide(color: Colorconst.lightgrey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            borderSide:
                                BorderSide(color: Colorconst.lightgrey)),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(w * 0.05),
                  child: TextFormField(
                      controller: email,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.newline,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colorconst.lightgrey,
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.email),
                        hintText: "valid email",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            borderSide:
                                BorderSide(color: Colorconst.lightgrey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            borderSide:
                                BorderSide(color: Colorconst.lightgrey)),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(w * 0.05),
                  child: TextFormField(
                      controller: password,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: a,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.newline,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colorconst.lightgrey,
                        border: InputBorder.none,
                        suffixIcon: InkWell(
                            onTap: () {
                              a = !a;
                              setState(() {});
                            },
                            child: Icon(
                                a ? Icons.lock_open : Icons.lock_outlined)),
                        hintText: "password",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            borderSide:
                                BorderSide(color: Colorconst.lightgrey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            borderSide:
                                BorderSide(color: Colorconst.lightgrey)),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(w * 0.05),
                  child: TextFormField(
                      controller: confrimpassword,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.text,
                      obscureText: b,
                      textInputAction: TextInputAction.newline,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colorconst.lightgrey,
                        border: InputBorder.none,
                        suffixIcon: InkWell(
                            onTap: () {
                              b = !b;
                              setState(() {});
                            },
                            child: Icon(
                                b ? Icons.lock_open : Icons.lock_outlined)),
                        hintText: "confirm passsword",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            borderSide:
                                BorderSide(color: Colorconst.lightgrey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            borderSide:
                                BorderSide(color: Colorconst.lightgrey)),
                      )),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(w * 0.05),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                child: Container(
                  height: w * 0.13,
                  width: w * 0.7,
                  decoration: BoxDecoration(
                      color: Colorconst.white,
                      borderRadius: BorderRadius.circular(w * 0.06),
                      border: Border.all(
                          color: Colorconst.primarycolor, width: w * 0.005)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "sign up",
                        style: TextStyle(
                            color: Colorconst.primarycolor,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: w * 0.08,
            ),
            Padding(
              padding: EdgeInsets.all(w * 0.05),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account ",
                      style: TextStyle(
                        color: Colorconst.black,
                        // fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                      "Login?",
                      style: TextStyle(
                          color: Colorconst.primarycolor,
                          fontWeight: FontWeight.w900,
                          fontSize: w * 0.04),
                    ),
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
