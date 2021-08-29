import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:home_screen/Precinct_Screen.dart';
import 'package:home_screen/payment_screen.dart';

class Precinct_Select_Screen extends StatelessWidget {
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
          title: const Text("Precincts"),
          backgroundColor: Colors.deepOrange,
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
                                  builder: (context) => Precinct_Screen()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/imgs/map.jpg',
                              width: 210.0, height: 210.0),
                        ),
                      ),
                    )),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 150.0),
                      child: Text(
                        "Precinct 2",
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 20.0),
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
                                  builder: (context) => Precinct_Screen()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/imgs/map.jpg',
                              width: 210.0, height: 210.0),
                        ),
                      ),
                    )),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 150.0),
                      child: Text(
                        "Precinct 2",
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 20.0),
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
                                  builder: (context) => Precinct_Screen()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/imgs/map.jpg',
                              width: 210.0, height: 210.0),
                        ),
                      ),
                    )),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 150.0),
                      child: Text(
                        "Precinct 3",
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 20.0),
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
                                  builder: (context) => Precinct_Screen()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/imgs/map.jpg',
                              width: 210.0, height: 210.0),
                        ),
                      ),
                    )),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 150.0),
                      child: Text(
                        "Precinct 4",
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 20.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
