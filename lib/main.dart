import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/View/Screens/donate_to.dart';
import 'package:s_c_p/View/Screens/donation.dart';
import 'package:s_c_p/View/Screens/forgot_password.dart';
import 'package:s_c_p/View/Screens/know_more.dart';
import 'package:s_c_p/View/Screens/location.dart';
import 'package:s_c_p/View/Screens/login_screen.dart';
import 'package:s_c_p/View/Screens/main_page.dart';
import 'package:s_c_p/View/Screens/manually_location.dart';
import 'package:s_c_p/View/Screens/edit_profile.dart';
import 'package:s_c_p/View/Screens/my-profile.dart';
import 'package:s_c_p/View/Screens/newpassword.dart';
import 'package:s_c_p/View/Screens/onboarding.dart';
import 'package:s_c_p/View/Screens/profile.dart';
import 'package:s_c_p/View/Screens/signup_screen.dart';
import 'package:s_c_p/View/Screens/verifiy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Stopwatch App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
      getPages: [
        GetPage(name: "/login", page: () => Login()),
        GetPage(name: "/sign", page: () => Signup()),
        GetPage(name: "/forgot", page: () => ForgotPassword()),
        GetPage(name: "/main", page: () => MainPage()),
        GetPage(name: "/profile", page: () => Profile()),
        GetPage(name: "/editprofile", page: () => EditProfile()),
        GetPage(name: "/myprofile", page: () => MyProfile()),
        GetPage(name: "/locate", page: () => Location()),
        GetPage(name: "/manual", page: () => ManuallyLocation()),
        GetPage(name: "/donation", page: () => Donation()),
        GetPage(name: "/donateto", page: () => DonateTo()),
        GetPage(name: "/knowmore", page: () => KnowMore()),
        GetPage(name: "/verifiy", page: () => VerifiyCode()),
        GetPage(name: "/newpass", page: () => NewPassword()),
      ],
    );
  }
}
