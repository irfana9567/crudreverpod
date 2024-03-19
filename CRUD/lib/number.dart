import 'package:country_code_picker/country_code_picker.dart';
import 'package:crud/colorconst.dart';
import 'package:crud/imageconst.dart';
import 'package:crud/main.dart';
import 'package:crud/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {

  TextEditingController phone = TextEditingController();
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
  child:   Container(

    height: w*0.05,

      width: w*0.05,

      //color: Colors.blueGrey,

      child: Center(child: SvgPicture.asset(ImageConst.shape,))),
),
        title: Text("Enter Phone Number",style: TextStyle(
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
        //color: Colors.blueGrey,
        child: Image.asset(ImageConst.cellphone)),
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
                    controller: phone,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    autovalidateMode:

                    AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.newline,

                    decoration: InputDecoration(

                      prefixIcon:CountryCodePicker(
                        onChanged: print,
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'india',
                        favorite: ['+91',''],
                        // optional. Shows only country name and flag
                        showCountryOnly: false,
                        // optional. Shows only country name and flag when popup is closed.
                        showOnlyCountryWhenClosed: false,
                        // optional. aligns the flag and the Text left
                        alignLeft: false,
                      ),



                      focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                      enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                    )),
              ),
            ),
            SizedBox(height: w*0.04,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>Otp(),));
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


                    Text(" send OTP",style: TextStyle(
                        color: Colorconst.primarycolor,
                        fontWeight: FontWeight.w900
                    ),),
                  ],
                ),
              ),
            ),
            Container(
              height: w*0.75,
              width: w*0.4,
             // color: Colors.blueGrey,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Sign in with Another Method ?",style: TextStyle(
                  color: Colorconst.primarycolor
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
