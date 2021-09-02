import 'package:flutter/material.dart';
import 'package:home_screen/landing_screen.dart';

import 'home.dart';

class Profile_Screen extends StatelessWidget {
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
          title: Text("Profile"),
          actions: [
            IconButton(
              icon: Icon(
                Icons.edit,
              ),
              // iconSize: 50,
              color: Colors.white,
              splashColor: Colors.purple,
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.yellow.shade900,
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/imgs/ProfileImage.png',
                        width: 160,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Text(
                        "User Name",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 72.0),
                      child: Text("user surname"),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                  child: ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  "(+92 2333222332)",
                  style: TextStyle(fontSize: 18),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                  child: ListTile(
                leading: Icon(Icons.mail),
                title: Text(
                  "username@gmail.com",
                  style: TextStyle(fontSize: 18),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Premium",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Package"),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "12",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Orders"),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: ListTile(
                leading: Icon(Icons.favorite_outline),
                title: Text("Your Favorites"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: ListTile(
                leading: Icon(Icons.payment),
                title: Text("Payments"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                leading: (Icon(Icons.logout)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Landing_Screen()));
                },
                title: Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 // Image.asset(
              //   'assets/imgs/ProfileImage.png',
              // ),