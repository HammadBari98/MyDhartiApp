import 'package:flutter/material.dart';
import 'package:home_screen/home.dart';
import 'package:home_screen/home_screen.dart';
import 'package:home_screen/package_screen.dart';

class Package_Detail_Screen extends StatelessWidget {
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
          title: Text("Package Details"),
          backgroundColor: Colors.yellow.shade900,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Center(
                child: Text(
                  "FREE",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
                width: 0.5,
              )),
              child: ListTile(
                  leading: Text(
                    'Expiration Date',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  trailing: Text(
                    '10 days',
                    style: TextStyle(fontSize: 20.0),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
                width: 0.5,
              )),
              child: ListTile(
                  leading: Text(
                    'Property listing',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  trailing: Text(
                    '10 ',
                    style: TextStyle(fontSize: 20.0),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
                width: 0.5,
              )),
              child: ListTile(
                leading: Text(
                  'Featured Listing',
                  style: TextStyle(fontSize: 20.0),
                ),
                trailing: Text(
                  '5',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
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
                              vertical: 12.0, horizontal: 40.0),
                          child: Text(
                            "SUBMIT",
                            style: TextStyle(fontSize: 20, color: Colors.white),
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
              //             builder: (context) => Package_Screen()));
              //   },
              //   child: Container(
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text(
              //         "BACK",
              //         style: TextStyle(color: Colors.white, fontSize: 18),
              //       ),
              //     ),
              //   ),
              //   color: Colors.deepOrange,
              // ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Package_Screen()));
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
                              vertical: 12.0, horizontal: 40.0),
                          child: Text(
                            "BACK",
                            style: TextStyle(fontSize: 20, color: Colors.white),
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
                          Icons.arrow_back,
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
              //             builder: (context) => Package_Screen()));
              //   },
              //   child: Container(
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text(
              //         "BACK",
              //         style: TextStyle(color: Colors.white, fontSize: 18),
              //       ),
              //     ),
              //   ),
              //   color: Colors.deepOrange,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
