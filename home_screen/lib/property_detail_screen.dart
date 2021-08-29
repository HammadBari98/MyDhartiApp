import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:home_screen/home.dart';
import 'package:home_screen/home_screen.dart';

class Property_Details extends StatefulWidget {
  const Property_Details({Key? key}) : super(key: key);

  @override
  _Property_DetailsState createState() => _Property_DetailsState();
}

class _Property_DetailsState extends State<Property_Details> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ),
                );
              },
              child: Icon(
                Icons.arrow_back_sharp,
              )),
          title: Text("Property Details"),
          backgroundColor: Colors.yellow.shade900,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      CarouselSlider(
                        items: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/imgs/home1.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/imgs/home2.png'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/imgs/hom3.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                        options: CarouselOptions(
                            height: 200.0, autoPlay: true, viewportFraction: 1),
                      ),
                    ],
                  ),
                  // Container(
                  //     child: Row(
                  //   children: [
                  //     Text(
                  //       "Bahria Town Karachi",
                  //       style: TextStyle(fontSize: 20),
                  //     )
                  //   ],
                  // )),
                  // Container(
                  //     child: Row(
                  //   children: [Text("A-21 Street # 21, Precinct 1")],
                  // )),
                  // Container(
                  //     child: Row(
                  //   children: [Text("Corner-WestOpen")],
                  // )),
                  Column(
                    children: [
                      Text(
                        "Bahria Town Karachi",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "A-21 Street # 21, Precinct 1",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Corner-WestOpen",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'date: 04 Aug 2021',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Container(
                    color: Colors.yellow.shade900,
                    child: ListTile(
                      leading: Text(
                        "Seller (2)",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      trailing: Text(
                        "Buyer (5)",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Description:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.grey.shade200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "  Name: Imtiaz Bakir",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "  20 aug 2021 ",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "   Amount: 91 Lacs",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "   Contact: 0334-1234567",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // color: Colors.grey.shade200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "  Name: Huzaifa Hussain",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "  15 aug 2021 ",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "   Amount: 90 Lacs",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "   Contact: 0334-1234567",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class Property_Detail extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
