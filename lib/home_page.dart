import 'package:carousel_slider/carousel_slider.dart';
import 'package:crud/api.dart';
import 'package:crud/banner.dart';
import 'package:crud/colorconst.dart';
import 'package:crud/home_page2.dart';
import 'package:crud/imageconst.dart';
import 'package:crud/login_singup.dart';
import 'package:crud/main.dart';
import 'package:crud/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int initialindex = 0;

  List images = [
    {
      "image": ImageConst.pixels,
      "image": ImageConst.pixels,
      "image": ImageConst.pixels,
    },
    {
      "image": ImageConst.pixels,
      "image": ImageConst.pixels,
      "image": ImageConst.pixels,
    },
    {
      "image": ImageConst.pixels,
      "image": ImageConst.pixels,
      "image": ImageConst.pixels,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding:  EdgeInsets.only(top:w*0.05),
              child: CarouselSlider(
                items: List.generate(
                  images.length,
                  (index) => Container(
                      height: w * 0.5,
                      width: w * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.red,

                        borderRadius: BorderRadius.circular(w * 0.04),

                        // boxShadow: [
                        //   BoxShadow(
                        //     blurStyle: BlurStyle.normal,
                        //     color: Colors.black.withOpacity(0.15),
                        //     offset: Offset(0, 4),
                        //     spreadRadius: 15,
                        //     blurRadius: 15,
                        //   )
                        //
                        // ]
                      ),
                      child: Image(
                        image: AssetImage(images[index]['image']),
                        fit: BoxFit.fill,
                      )),
                ),
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, reason) {
                    initialindex = index;
                    setState(() {});
                    print(index);
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(w * 0.03),
              child: AnimatedSmoothIndicator(
                activeIndex: initialindex,
                count: 3,
                effect: SlideEffect(
                    dotWidth: w * 0.02,
                    dotHeight: w * 0.02,
                    activeDotColor: Colorconst.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>HomePage2(),));
                  },
                  child: Container(
                    height: w * 0.45,
                    width: w * 0.4,
                    decoration: BoxDecoration(
                        color: Colorconst.white,
                        boxShadow: [
                          BoxShadow(
                            blurStyle: BlurStyle.normal,
                            color: Colors.black.withOpacity(0.15),
                            offset: Offset(0, 4),
                            spreadRadius: 15,
                            blurRadius: 15,
                          )
                        ],
                        borderRadius: BorderRadius.circular(w * 0.04)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Image.asset(
                          ImageConst.image276,
                          width: w * 0.13,
                        )),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          "CRUD",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>BannerPage(),));
                  },
                  child: Stack(children: [
                    Container(
                      height: w * 0.45,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                          color: Colorconst.white,
                          boxShadow: [
                            BoxShadow(
                              blurStyle: BlurStyle.normal,
                              color: Colors.black.withOpacity(0.15),
                              offset: Offset(0, 4),
                              spreadRadius: 15,
                              blurRadius: 15,
                            )
                          ],
                          borderRadius: BorderRadius.circular(w * 0.04)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(children: [
                            Center(
                                child: Image.asset(
                              ImageConst.image276,
                              width: w * 0.13,
                            )),
                            Padding(
                              padding: EdgeInsets.only(
                                top: w * 0.08,
                                left: w * 0.22,
                              ),
                              child: CircleAvatar(
                                radius: w * 0.04,
                                backgroundColor: Colors.grey,
                                child: Center(
                                  child: Icon(
                                    Icons.photo,
                                    color: Colorconst.white,

                                  ),
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Column(
                            children: [
                              Text(
                                "Cloud Storage",
                                style: TextStyle(fontWeight: FontWeight.w800,color: Colors.grey),
                              ),
                              Text("for firebase",style: TextStyle(color: Colors.grey),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(w*0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>API(),));
                    },
                    child: Container(
                      height: w * 0.45,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                          color: Colorconst.white,
                          boxShadow: [
                            BoxShadow(
                              blurStyle: BlurStyle.normal,
                              color: Colors.black.withOpacity(0.15),
                              offset: Offset(0, 4),
                              spreadRadius: 15,
                              blurRadius: 15,
                            )
                          ],
                          borderRadius: BorderRadius.circular(w * 0.04)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Image.asset(
                                ImageConst.image278,
                                width: w * 0.25,
                              )),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            "API ",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
