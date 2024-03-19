import 'dart:io';

import 'package:crud/colorconst.dart';
import 'package:crud/imageconst.dart';
import 'package:crud/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool a=false;
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
              height: w*0.05,
              width: w*0.05,
              //color: Colors.blueGrey,
              child: Center(child: SvgPicture.asset(ImageConst.shape,))),
        ),
        title: Text("profile",style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colorconst.black
        ),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                    children: [
                      Center(
                        child: file==null?CircleAvatar(
                            radius: w*0.2,
                            backgroundImage: AssetImage(ImageConst.ellipse)
                        )
                            :CircleAvatar(
                          radius: w*0.2,
                          backgroundImage:FileImage(file),

                        ),),
                      Positioned(
                        top: w*0.22,
                        left: w*0.58,
                        child: InkWell(
                          onTap: () {
                            showCupertinoModalPopup(context: context, builder: (context) {
                              return CupertinoActionSheet(
                                actions: [
                                  CupertinoActionSheetAction(onPressed: () {
                                    pickimage(ImageSource.gallery);
                                    Navigator.pop(context);
                                  }, child: Text("Gallery Photos")),
                                  CupertinoActionSheetAction(onPressed: () {
                                    pickimage(ImageSource.camera);
                                    Navigator.pop(context);
                                  }, child: Text("Camera")),

                                ],
                                cancelButton: CupertinoActionSheetAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    setState(() {

                                    });
                                  },
                                  child: Text("cancel"),
                                ),);
                            },);
                          },
                          child: CircleAvatar(
                            radius: w*0.07,
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
                        keyboardType: TextInputType.name,
                        autovalidateMode:
                        AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.newline,
                        decoration: InputDecoration(

                          label: Padding(
                            padding:  EdgeInsets.all(w*0.04),
                            child: Text("user name",
                              style: TextStyle(
                                  color: Colorconst.black,
                                  fontSize: w * 0.05),),
                          ),
                          focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                          enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                        )),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(w*0.05),
                  child: TextFormField(
                      controller: email,
                      autovalidateMode:
                      AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.newline,
                      decoration: InputDecoration(

                        label: Padding(
                          padding:  EdgeInsets.all(w*0.04),
                          child: Text("email",
                            style: TextStyle(
                                color: Colorconst.black,
                                fontSize: w * 0.05),),
                        ),
                        focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                        enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                      )),
                ),
                Padding(
                  padding:  EdgeInsets.all(w*0.05),
                  child: TextFormField(
                      controller: password,
                      autovalidateMode:
                      AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.newline,
obscureText: a,
keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon:InkWell(
                            onTap: () {
                              a=!a;
                              setState(() {

                              });
                            },
                            child: Icon(a?Icons.visibility:Icons.visibility_off)),
                        label: Padding(
                          padding:  EdgeInsets.all(w*0.04),
                          child: Text("password",
                            style: TextStyle(
                                color: Colorconst.black,
                                fontSize: w * 0.05),),
                        ),
                        focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                        enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                      )),
                ),

              ],
            ),
        SizedBox(height: w*0.05,),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                showCupertinoModalPopup(context: context, builder: (context) {
                  return CupertinoAlertDialog(
                    title: Text("Are you sure\nYou want to Update Details?"),
                    actions: [
                      Column(
                        children: [
                          CupertinoDialogAction(child: Text("Confirm",style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w800,),)),
                          Divider(),
                          CupertinoDialogAction(child: Text("cancel",style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w800,color: Colors.red),)
                            ,onPressed: () {
                              Navigator.pop(context);
                            },),

                        ],
                      )
                    ],
                  );
                },);
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


                    Text("Update",style: TextStyle(
                        color: Colorconst.primarycolor,
                        fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              ),
            ),
            ])
          ],
        ),
      ),
    );
  }
}
