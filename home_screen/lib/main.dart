// import 'package:flutter/material.dart';
// import 'package:home_screen/Precinct_Screen.dart';
// import 'package:home_screen/add_property_plot.dart';
// import 'package:home_screen/business_login_screen.dart';
// import 'package:home_screen/home.dart';
// import 'package:home_screen/home_screen.dart';
// import 'package:home_screen/landing_screen.dart';
// import 'package:home_screen/login_screen.dart';
// import 'package:home_screen/mobileNumber.dart';
// import 'package:home_screen/mobile_num_screen.dart';
// import 'package:home_screen/otp_screen.dart';
// import 'package:home_screen/package_detail_screen.dart';
// import 'package:home_screen/package_screen.dart';
// import 'package:home_screen/payment_screen.dart';
// import 'package:home_screen/precinct_select.dart';
// import 'package:home_screen/profile_screen.dart';
// import 'package:home_screen/property_detail_screen.dart';
// import 'package:home_screen/text.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
// import 'package:flutter_auth/constants.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:home_screen/home.dart';
import 'package:home_screen/landing_screen.dart';

import 'package:home_screen/map.dart';
import 'package:home_screen/precinct_list.dart';
import 'package:home_screen/properties.dart';
import 'package:home_screen/select_city.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Landing_Screen(),
    );
    //  FutureBuilder(
    //     future: _initialization,
    //     builder: (context, Snapshot){
    //       if (Snapshot.hasError){
    //         print("Something went Wrong");
    //         if (Snapshot.connectionState == ConnectionState.waiting) {
    //           return Container(
    //               child: Center(child: CircularProgressIndicator()));
    //         }
    //         return MaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           title: 'Flutter Auth',
    //           theme: ThemeData(
    //             primaryColor: kPrimaryColor,
    //             scaffoldBackgroundColor: Colors.white,
    //           ),
    //           home: WelcomeScreen(),
    //         );
    //       }
    //     });
    //  MaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           title: 'Flutter Auth',
    //           theme: ThemeData(
    //             primaryColor: kPrimaryColor,
    //             scaffoldBackgroundColor: Colors.white,
    //           ),
    //           home: WelcomeScreen(),
    //         );
  }
}
