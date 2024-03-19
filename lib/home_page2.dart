import 'package:crud/add_user.dart';
import 'package:crud/colorconst.dart';
import 'package:crud/edit_user.dart';
import 'package:crud/imageconst.dart';
import 'package:crud/login_singup.dart';
import 'package:crud/main.dart';
import 'package:crud/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  List home = [
    {
      "image":ImageConst.boy,
      "text":"Albert Flores",
      "text1":"1901 Thornridge Cir. Shiloh, Hawaii",
      "icon":ImageConst.pen,
      "icon1":ImageConst.delete
    },
    {
      "image":ImageConst.boy,
      "text":"Albert Flores",
      "text1":"1901 Thornridge Cir. Shiloh, Hawaii",
      "icon":ImageConst.pen,
      "icon1":ImageConst.delete
    },
    {
      "image":ImageConst.boy,
      "text":"Albert Flores",
      "text1":"1901 Thornridge Cir. Shiloh, Hawaii",
      "icon":ImageConst.pen,
      "icon1":ImageConst.delete
    },
    {
      "image":ImageConst.boy,
      "text":"Albert Flores",
      "text1":"1901 Thornridge Cir. Shiloh, Hawaii",
      "icon":ImageConst.pen,
      "icon1":ImageConst.delete
    },
    {
      "image":ImageConst.boy,
      "text":"Albert Flores",
      "text1":"1901 Thornridge Cir. Shiloh, Hawaii",
      "icon":ImageConst.pen,
      "icon1":ImageConst.delete

    },
    {
      "image":ImageConst.boy,
      "text":"Albert Flores",
      "text1":"1901 Thornridge Cir. Shiloh, Hawaii",
      "icon":ImageConst.pen,
      "icon1":ImageConst.delete

    },
    {
      "image":ImageConst.boy,
      "text":"Albert Flores",
      "text1":"1901 Thornridge Cir. Shiloh, Hawaii",
      "icon":ImageConst.pen,
      "icon1":ImageConst.delete

    },
    {
      "image":ImageConst.boy,
      "text":"Albert Flores",
      "text1":"1901 Thornridge Cir. Shiloh, Hawaii",
      "icon":ImageConst.pen,
      "icon1":ImageConst.delete

    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colorconst.primarycolor,
        onPressed: () {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => AddUser(),), (route) => false);
        },
        child: Icon(
            Icons.add
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colorconst.white,
        title: Text(
          "Hello, User",
          style:
              TextStyle(color: Colorconst.black, fontWeight: FontWeight.w800),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: w * 0.04),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>Profile(),));
                  },
                  child: Image.asset(
                    ImageConst.ellipse,
                    width: w * 0.13,
                  ),
                ),
                SizedBox(
                  width: w * 0.03,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>LoginSignup(),));
                  },
                  child: SvgPicture.asset(
                    ImageConst.logout,
                    width: w * 0.1,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(w * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Current Users",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: w * 0.05),
                  ),
                ],
              ),
            ),
            Container(
              height: w*2.2,
              width: w*1,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.all(w*0.03,),
                      child: Container(
                          height: w * 0.2,
                          width: w * 0.33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w*0.04),
                            color: Colorconst.lightgrey
                          ),
                          child: ListTile(
                              leading: Image.asset(home[index]["image"]),
                              title: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    home[index]["text"],
                                    style: TextStyle(
                                        fontSize: w * 0.03,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              subtitle: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                   home[index]["text1"],
                                    style: TextStyle(fontSize: w * 0.03),
                                  ),
                                ],
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      showCupertinoModalPopup(context: context, builder: (context) {
                                        return CupertinoAlertDialog(
                                          title: Text("Are you sure\nYou want to delete User"),
                                          actions: [
                                            Column(
                                              children: [
                                                CupertinoDialogAction(child: Text("yes",style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w800,color: Colors.red),)),
                                                Divider(),
                                                CupertinoDialogAction(child: Text("cancel",style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w800),)
                                                ,onPressed: () {
                                                  Navigator.pop(context);
                                                },),

                                              ],
                                            )
                                          ],
                                        );
                                      },);
                                    },
                                      child: SvgPicture.asset(home[index]["icon1"])),
                                  SizedBox(width: w*0.02,),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(
                                          builder: (context) =>EditUser(),));
                                      },
                                      child: SvgPicture.asset(home[index]["icon"],width: w*0.05,))
                                ],
                              ))),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: w * 0.0001,

                    );
                  },
                  itemCount: home.length),
            ),
          ],
        ),
      ),
    );
  }
}
