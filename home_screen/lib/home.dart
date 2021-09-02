import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:home_screen/add_property_plot.dart';
import 'package:home_screen/login_screen.dart';
import 'package:home_screen/mobileNumber.dart';
import 'package:home_screen/package_screen.dart';
import 'package:home_screen/precinct_list.dart';
import 'package:home_screen/profile_screen.dart';
import 'package:home_screen/properties.dart';
import 'package:home_screen/property_detail_screen.dart';
import 'package:home_screen/map.dart';

import 'my_property.dart';

class Home extends StatefulWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final screens = [
    Home(),
    MobileScreen(),
    Center(
      child: Text("Profile"),
    ),
    Center(
      child: Text("Settting"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                dropdownColor: Colors.white,
                underline: SizedBox(),
                icon: Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                items: <String>[
                  '🇺🇸 English',
                  '🇵🇰 اُردُو‎',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profile_Screen()));
                    },
                    child: Icon(Icons.person))),
          ],
          backgroundColor: Colors.yellow.shade900,
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //     type: BottomNavigationBarType.fixed,
        //     backgroundColor: Colors.yellow.shade900,
        //     selectedItemColor: Colors.white,
        //     unselectedItemColor: Colors.white,
        //     selectedFontSize: 15,
        //     showUnselectedLabels: false,
        //     currentIndex: currentIndex,
        //     onTap: (index) => setState(() => currentIndex = index),
        //     items: [
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.home),
        //           label: 'Home',
        //           backgroundColor: Colors.yellow.shade900),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.house_siding_rounded),
        //           label: 'Add Property',
        //           backgroundColor: Colors.yellow.shade900),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.more_horiz),
        //           label: 'More',
        //           backgroundColor: Colors.yellow.shade900),
        //     ]),
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          child: Drawer(
              child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 48,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/imgs/logo.png'),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: ListTile(
                          leading:
                              Icon(Icons.home, color: Colors.yellow.shade900),
                          title: Text(
                            "Home",
                            style: TextStyle(
                                color: Colors.yellow.shade900, fontSize: 16),
                          ),
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
                        ),
                      ),
                      ListTile(
                          leading: Icon(Icons.house_siding_rounded,
                              color: Colors.yellow.shade900),
                          title: Text(
                            "Add Property",
                            style: TextStyle(
                                color: Colors.yellow.shade900, fontSize: 16),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Add_Property_Plot();
                                },
                              ),
                            );
                          }),
                      // ListTile(
                      //     leading: Icon(Icons.account_box,
                      //         color: Colors.yellow.shade900),
                      //     title: Text(
                      //       "Profile",
                      //       style: TextStyle(
                      //           color: Colors.yellow.shade900, fontSize: 16),
                      //     ),
                      //     onTap: () {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //           builder: (context) {
                      //             return Add_Property_Plot();
                      //           },
                      //         ),
                      //       );
                      //     }),
                      ListTile(
                          leading: Icon(Icons.location_city,
                              color: Colors.yellow.shade900),
                          title: Text(
                            "Map",
                            style: TextStyle(
                                color: Colors.yellow.shade900, fontSize: 16),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Map();
                                },
                              ),
                            );
                          }),
                      ListTile(
                          leading: Icon(Icons.file_present,
                              color: Colors.yellow.shade900),
                          title: Text(
                            "My Properties",
                            style: TextStyle(
                                color: Colors.yellow.shade900, fontSize: 16),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return My_Property_Screen();
                                },
                              ),
                            );
                          }),
                      ListTile(
                          leading: Icon(Icons.file_present,
                              color: Colors.yellow.shade900),
                          title: Text(
                            "Packages",
                            style: TextStyle(
                                color: Colors.yellow.shade900, fontSize: 16),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Package_Screen();
                                },
                              ),
                            );
                          }),
                      ListTile(
                          leading: Icon(Icons.favorite,
                              color: Colors.yellow.shade900),
                          title: Text(
                            "Favorite ",
                            style: TextStyle(
                                color: Colors.yellow.shade900, fontSize: 16),
                          ),
                          onTap: () {}),
                      ListTile(
                          leading:
                              Icon(Icons.logout, color: Colors.yellow.shade900),
                          title: Text(
                            "Logout",
                            style: TextStyle(
                                color: Colors.yellow.shade900, fontSize: 16),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Login_Screen();
                                },
                              ),
                            );
                          })
                    ],
                  ),
                ),
              )
            ],
          )),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            // screens[currentIndex],
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
            Column(
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Categories",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Properties()));
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
                                          vertical: 12.0, horizontal: 10.0),
                                      child: Center(
                                        child: Text(
                                          "Societies",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
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
                                      Icons.home,
                                      size: 20.0,
                                      color: Colors.yellow.shade900,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Properties()));
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
                                      child: Center(
                                        child: Text(
                                          "Classifieds",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
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
                                      Icons.home,
                                      size: 20.0,
                                      color: Colors.yellow.shade900,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Properties()));
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
                                      child: Center(
                                        child: Text(
                                          "Buildings",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
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
                                      Icons.home,
                                      size: 20.0,
                                      color: Colors.yellow.shade900,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Popular Deals",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          child: MaterialButton(
                            color: Colors.yellow.shade900,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Package_Screen()));
                            },
                            child: Text(
                              "Recent Hot Deals",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          child: MaterialButton(
                            color: Colors.yellow.shade900,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Package_Screen()));
                            },
                            child: Text(
                              "Recent Hot Items",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          child: MaterialButton(
                            color: Colors.yellow.shade900,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Package_Screen()));
                            },
                            child: Text(
                              "Best Deals",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Property_Details()));
                        },
                        child: ListTile(
                          leading: Image.asset(
                            'assets/imgs/house3.jpg',
                            width: 100,
                          ),
                          title: Text(
                            'Bahria Town Karachi',
                            textScaleFactor: 1,
                          ),
                          trailing: SizedBox(
                            height: 25,
                            child: FlatButton(
                              // color: Colors.yellow.shade900,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Property_Details()));
                              },
                              child: Text(
                                "View",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.yellow.shade900),
                              ),
                            ),
                          ),
                          subtitle: Text('1 Crore'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Property_Details()));
                        },
                        child: ListTile(
                          leading: Image.asset(
                            'assets/imgs/house2.jpg',
                            width: 100,
                          ),
                          title: Text(
                            'Scheme 33',
                            textScaleFactor: 1,
                          ),
                          trailing: SizedBox(
                            height: 25,
                            child: FlatButton(
                              // color: Colors.yellow.shade900,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Property_Details();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "View",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.yellow.shade900),
                              ),
                            ),
                          ),
                          subtitle: Text('2.5 Crore'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Property_Details()));
                        },
                        child: ListTile(
                          leading: Image.asset(
                            'assets/imgs/home1.jpg',
                            width: 100,
                          ),
                          title: Text(
                            'Lyari drezling',
                            textScaleFactor: 1,
                          ),
                          trailing: SizedBox(
                            height: 25,
                            child: FlatButton(
                              // color: Colors.yellow.shade900,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Property_Details();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "View",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.yellow.shade900),
                              ),
                            ),
                          ),
                          subtitle: Text('20 K'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        )));
  }
}
