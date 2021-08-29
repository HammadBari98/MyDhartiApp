import 'package:flutter/material.dart';
import 'package:home_screen/home_screen.dart';
import 'package:home_screen/otp_screen.dart';
import 'package:home_screen/package_screen.dart';

class Mobile_Num_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyDHARTI.com",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Mobile Details"),
            backgroundColor: Colors.yellow.shade900,
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 48.0, left: 20.0),
                child: Text(
                  "Enter Mobile Number",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 20),
                child: TextField(
                  autocorrect: false,
                  autofocus: false,
                  style: TextStyle(fontSize: 18.0),
                  decoration: InputDecoration(
                      hintText: "Enter Mobile Number",
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.deepOrange[10],
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
                          borderRadius: BorderRadius.circular(22.0)),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 165,
                            padding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 20.0),
                            child: Text(
                              "SUBMIT",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
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
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => Home_Screen()));
                //   },
                //   child: Text("SUBMIT",
                //       style: TextStyle(fontSize: 18.0, color: Colors.white)),
                //   minWidth: 250.0,
                //   splashColor: Colors.deepOrange,
                //   color: Colors.deepOrange,
                //   padding: EdgeInsets.symmetric(
                //     vertical: 12.0,
                //   ),
                // ),
              ),
            ],
          )),
    );
  }
}
