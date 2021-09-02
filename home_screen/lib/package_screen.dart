import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:home_screen/home.dart';
import 'package:home_screen/package_detail_screen.dart';
import 'package:home_screen/payment_screen.dart';

class Package_Screen extends StatelessWidget {
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            //onPressed:() => Navigator.pop(context, false),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          title: Text("Packages"),
          backgroundColor: Colors.yellow.shade900,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                        child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Package_Detail_Screen();
                              },
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/imgs/FreePackage.png',
                              width: 110.0, height: 110.0),
                        ),
                      ),
                    )),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 150.0),
                      child: Text(
                        "FREE",
                        style: TextStyle(
                            color: Colors.yellow.shade900, fontSize: 20.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                        child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment_Screen()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/imgs/StandardPackage.png',
                              width: 110.0, height: 110.0),
                        ),
                      ),
                    )),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 150.0),
                      child: Text(
                        "STANDARD",
                        style: TextStyle(
                            color: Colors.yellow.shade900, fontSize: 20.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                        child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment_Screen()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/imgs/PremiumPackage.png',
                              width: 110.0, height: 110.0),
                        ),
                      ),
                    )),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 150.0),
                      child: Text(
                        "PREMIUM",
                        style: TextStyle(
                            color: Colors.yellow.shade900, fontSize: 20.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                        child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment_Screen()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/imgs/GoldPackage.png',
                              width: 110.0, height: 110.0),
                        ),
                      ),
                    )),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 150.0),
                      child: Text(
                        "GOLD",
                        style: TextStyle(
                            color: Colors.yellow.shade900, fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
