import 'package:flutter/material.dart';
import 'package:home_screen/otp_screen.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/imgs/screen_bg.jpg',
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //---------Logo On Top--------
              // Padding(
              //   padding: EdgeInsets.all(20.0),
              //   child: Image.asset(
              //     "assets/imgs/logo.png",
              //     height: 120.0,
              //     width: 120.0,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
              ),
              Stack(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Container(
                      width: 350.0,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 25.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(fontSize: 16.0),
                              decoration: InputDecoration(
                                  hintText: "Enter Name",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: EdgeInsets.all(15.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(fontSize: 16.0),
                              decoration: InputDecoration(
                                  hintText: "Enter Email",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: EdgeInsets.all(15.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              obscureText: true,
                              style: TextStyle(fontSize: 16.0),
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: EdgeInsets.all(15.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(fontSize: 16.0),
                              decoration: InputDecoration(
                                  hintText: "Estate Agency Name",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: EdgeInsets.all(15.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(fontSize: 16.0),
                              decoration: InputDecoration(
                                  hintText: "Phone Number",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: EdgeInsets.all(15.0)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9.0),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OTP_Screen()));
                                },
                                child: Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0.0, 20.0),
                                            blurRadius: 30.0,
                                            color: Colors.black12),
                                      ],
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(22.0)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 165,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12.0, horizontal: 20.0),
                                        child: Text(
                                          "Create Account",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.yellow.shade900,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(95.0),
                                            topLeft: Radius.circular(95.0),
                                            bottomRight: Radius.circular(200.0),
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.send,
                                        size: 20.0,
                                        color: Colors.yellow.shade900,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // MaterialButton(
                            //   onPressed: () {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) => OTP_Screen()));
                            //   },
                            //   child: Text("SUBMIT",
                            //       style: TextStyle(
                            //           fontSize: 18.0, color: Colors.white)),
                            //   minWidth: 250.0,
                            //   splashColor: Colors.yellow.shade800,
                            //   color: Colors.yellow.shade900,
                            //   padding: EdgeInsets.symmetric(
                            //     vertical: 12.0,
                            //   ),
                            // ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
