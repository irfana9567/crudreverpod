import 'package:crud/api.dart';
import 'package:crud/banner.dart';
import 'package:crud/edit_user.dart';
import 'package:crud/features/details_adding/screen/text_page.dart';
import 'package:crud/home_page.dart';
import 'package:crud/home_page2.dart';
import 'package:crud/login.dart';
import 'package:crud/login_singup.dart';
import 'package:crud/number.dart';
import 'package:crud/otp.dart';
import 'package:crud/profile.dart';
import 'package:crud/signup.dart';
import 'package:crud/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'firebase_options.dart';
var w;
var h;
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: Crud()));
}
class Crud extends StatelessWidget {
  const Crud({super.key});

  ///comment added
  ///
  ///
  /// second comment
  ///
  ///

  @override
  Widget build(BuildContext context) {  //gg
    w=MediaQuery.of(context).size.width; //gg
    h=MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:textPage() ,
        theme: ThemeData(
          textTheme:GoogleFonts.ralewayTextTheme(),
        ),
      ),
    );

  }
}
