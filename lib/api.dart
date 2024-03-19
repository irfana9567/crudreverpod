import 'package:crud/colorconst.dart';
import 'package:crud/imageconst.dart';
import 'package:crud/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class API extends StatefulWidget {
  const API({super.key});

  @override
  State<API> createState() => _APIState();
}

class _APIState extends State<API> {
  TextEditingController name = TextEditingController();
  List api=[
    {
      "text1": "Postoffice : Perinthalmanna",
      "text2":"Pincode : 679322"
    },
    {
      "text1": "Postoffice : Perinthalmanna",
      "text2":"Pincode : 679322"
    },
    {
      "text1": "Postoffice : Perinthalmanna",
      "text2":"Pincode : 679322"
    },
    {
      "text1": "Postoffice : Perinthalmanna",
      "text2":"Pincode : 679322"
    },
    {
      "text1": "Postoffice : Perinthalmanna",
      "text2":"Pincode : 679322"
    },
    {
      "text1": "Postoffice : Perinthalmanna",
      "text2":"Pincode : 679322"
    },
    {
      "text1": "Postoffice : Perinthalmanna",
      "text2":"Pincode : 679322"
    },
    {
      "text1": "Postoffice : Perinthalmanna",
      "text2":"Pincode : 679322"
    },
  ];
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
        title: Text("Postal Codes",style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colorconst.black
        ),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.all(w*0.05),
                  child: Container(
                    width: w * 0.9,
                    height: w * 0.1,
                    decoration: BoxDecoration(
                      //  border: Border.all(color: Colorconst.primarycolor),
                      borderRadius:BorderRadius.circular(w*0.04),
                      color: Colorconst.lightgrey,
                    ),
                    child: TextFormField(

                        controller: name,
                        autovalidateMode:
                        AutovalidateMode.onUserInteraction,

                        textInputAction: TextInputAction.newline,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Colors.blue,),
                          label: Text("Enter pincode",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: w * 0.05),),
                          //focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                          // enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(w * 0.04),),
                        )),
                  ),
                ),
              ],
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
                          child:Padding(
                            padding:  EdgeInsets.only(top:w*0.03,left: w*0.04),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(api[index]["text1"],style: TextStyle(fontWeight: FontWeight.w800,fontSize: w*0.05),),
                                Text(api[index]["text2"],style: TextStyle(fontWeight: FontWeight.w800,fontSize: w*0.05),)
                              ],
                            ),
                          )
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: w * 0.0001,

                    );
                  },
                  itemCount: api.length),
            ),
          ],
        ),
      ),
    );
  }
}
