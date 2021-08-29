import 'package:flutter/material.dart';

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
          title: Text("Profile"),
          backgroundColor: Colors.yellow.shade900,
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
              child: Container(
                width: 15,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.deepOrange)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 24,
                    color: Colors.yellow.shade900,
                  ),
                  label: Text(
                    "HOME",
                    style:
                        TextStyle(fontSize: 20, color: Colors.yellow.shade900),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
              child: Container(
                width: 15,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow.shade900)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notification_add,
                    size: 24,
                    color: Colors.yellow.shade900,
                  ),
                  label: Text(
                    "NOTIFICATION",
                    style:
                        TextStyle(fontSize: 20, color: Colors.yellow.shade900),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
              child: Container(
                width: 15,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow.shade900)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.message,
                    size: 24,
                    color: Colors.yellow.shade900,
                  ),
                  label: Text(
                    "MY MESSAGES",
                    style:
                        TextStyle(fontSize: 20, color: Colors.yellow.shade900),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
              child: Container(
                width: 15,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow.shade900)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.details,
                    size: 24,
                    color: Colors.yellow.shade900,
                  ),
                  label: Text(
                    "PACKAGES",
                    style:
                        TextStyle(fontSize: 20, color: Colors.yellow.shade900),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
              child: Container(
                width: 15,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow.shade900)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 24,
                    color: Colors.yellow.shade900,
                  ),
                  label: Text(
                    "SETTINGS",
                    style:
                        TextStyle(fontSize: 20, color: Colors.yellow.shade900),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
              child: Container(
                width: 15,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow.shade900)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.help,
                    size: 24,
                    color: Colors.yellow.shade900,
                  ),
                  label: Text(
                    "HELP",
                    style:
                        TextStyle(fontSize: 20, color: Colors.yellow.shade900),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
              child: Container(
                width: 15,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow.shade900)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.info,
                    size: 24,
                    color: Colors.yellow.shade900,
                  ),
                  label: Text(
                    "ABOUT US",
                    style:
                        TextStyle(fontSize: 20, color: Colors.yellow.shade900),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
              child: Container(
                width: 15,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.deepOrange)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.logout,
                    size: 24,
                    color: Colors.yellow.shade900,
                  ),
                  label: Text(
                    "LOGOUT",
                    style:
                        TextStyle(fontSize: 20, color: Colors.yellow.shade900),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
