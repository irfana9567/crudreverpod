import 'package:crud/colorconst.dart';
import 'package:crud/home_page.dart';
import 'package:crud/imageconst.dart';
import 'package:crud/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
        title: Text("Verify OTP",style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colorconst.black
        ),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
            children: [
        Padding(
        padding:  EdgeInsets.all(w*0.04),
        child: Container(
            height:w*0.7,
            width: w*0.9,
           // color: Colors.blueGrey,
            child: Image.asset(ImageConst.otp)),
    ),

              Padding(
                padding:  EdgeInsets.all(w*0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("OTP has been sent to "),
                   Text("*****634",
                   style: TextStyle(color: Colorconst.primarycolor,
                   fontWeight: FontWeight.w800),),
                   SvgPicture.asset(ImageConst.pen)
                  ],
                ),
              ),

             Padding(
               padding:  EdgeInsets.all(w*0.03),
               child: Container(
height: w*0.5,
                 child: FractionallySizedBox(
                   child: Pinput(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     closeKeyboardWhenCompleted: true,
                     length: 6,
                     disabledPinTheme: PinTheme(
                       constraints: BoxConstraints(
                         maxHeight: w*0.2,
                         maxWidth: w*0.1
                       ),
                       decoration: BoxDecoration(
                         color: Colorconst.lightgrey,
                         borderRadius: BorderRadius.circular(w*0.04)
                       )
                     ),
                   ),
                 ),
               ),
             ),
              Padding(
                padding:  EdgeInsets.all(w*0.05),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>HomePage(),));
                  },
                  child: Container(
                    height: w*0.13,
                    width: w*0.7,
                    decoration: BoxDecoration(
                    color: Colorconst.white,
                    borderRadius: BorderRadius.circular(w*0.06),
                    border: Border.all(color: Colorconst.primarycolor,width: w*0.005)

                    ),

                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Text("Verify",style: TextStyle(
                        color: Colorconst.primarycolor,
                        fontWeight: FontWeight.w900
                    ),),
                  ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: w*0.04,),
              Padding(
                padding:  EdgeInsets.all(w*0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Text("Haven't got the confirmation code yet? "),
                Text("Resend",style: TextStyle(color: Colorconst.primarycolor),)
                  ],
                ),
              ),
              Container(
                height: w*0.3,
                width: w*01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Try Another "),
                  Text("Method?",style: TextStyle(fontWeight: FontWeight.w800,color: Colorconst.primarycolor),
                  ),
                ],
              )
    ]),
      )
    );
  }
}
