import 'package:flutter/material.dart';
import 'package:home_screen/map.dart';
import 'package:home_screen/select_city.dart';

class Properties extends StatefulWidget {
  @override
  _PropertiesState createState() => _PropertiesState();
}

class _PropertiesState extends State<Properties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Properties", style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.yellow.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "SOCIETIES",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.yellow.shade900,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow.shade900,
                    blurRadius: 0,
                    // offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: Text(
                      "BAHRIA - 1",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Select_City()));
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow.shade900,
                    blurRadius: 0,
                    // offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: Text(
                      "BAHRIA - 2",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Select_City()));
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "CLASSIFIEDS",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.yellow.shade900,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow.shade900,
                    blurRadius: 0,
                    // offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: ListTile(
                // leading: Icon(
                //   Icons.arrow_right,
                //   size: 40,
                // ),
                title: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: Text(
                      "Scheme 33",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                // trailing: Icon(Icons.map_rounded),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Select_City()));
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "BUILDINGS",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.yellow.shade900,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow.shade900,
                    blurRadius: 0,
                    // offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: Text(
                      "SAIMA",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Select_City()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
