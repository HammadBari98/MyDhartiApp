import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:home_screen/package_detail_screen.dart';
import 'package:home_screen/payment_screen.dart';

class Precinct_Screen extends StatelessWidget {
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
          title: const Text("Precinct"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
              child: Container(
                width: 400,
                child: MaterialButton(
                  onPressed: () {},
                  child: Container(
                    child: Container(
                      child: Text("BAHRIA TOWN KARACHI",
                          style: TextStyle(
                              fontSize: 18.0, color: Colors.deepOrange)),
                    ),
                  ),
                  minWidth: 100.0,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Container(
                    width: 450,
                    height: 300,
                    child: FittedBox(
                      child: Image.asset('assets/imgs/map.jpg'),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Row(
              children: [
                Radio(
                  value: Colors.deepOrange,
                  groupValue: null,
                  onChanged: null,
                ),
                Text(
                  "BUYER",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: Colors.deepOrange,
                  groupValue: null,
                  onChanged: null,
                ),
                Text(
                  "SELLER",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
