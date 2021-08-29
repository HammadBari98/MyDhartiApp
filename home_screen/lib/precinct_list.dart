import 'package:flutter/material.dart';
import 'package:home_screen/map.dart';

class Precinct_List extends StatefulWidget {
  @override
  _Precinct_ListState createState() => _Precinct_ListState();
}

class _Precinct_ListState extends State<Precinct_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Precincts", style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.yellow.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image(image: AssetImage('assets/imgs/map.jpg')),
                title: Text("Precinct 1"),
                subtitle: Text("Bahria Town Block"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Map()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image(image: AssetImage('assets/imgs/map.jpg')),
                title: Text("Precinct 2"),
                subtitle: Text("Bahria Town Block"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Map()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image(image: AssetImage('assets/imgs/map.jpg')),
                title: Text("Precinct 3"),
                subtitle: Text("Bahria Town Block"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Map()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image(image: AssetImage('assets/imgs/map.jpg')),
                title: Text("Precinct 4"),
                subtitle: Text("Bahria Town Block"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Map()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image(image: AssetImage('assets/imgs/map.jpg')),
                title: Text("Precinct 5"),
                subtitle: Text("Bahria Town Block"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Map()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image(image: AssetImage('assets/imgs/map.jpg')),
                title: Text("Precinct 6"),
                subtitle: Text("Bahria Town Block"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Map()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image(image: AssetImage('assets/imgs/map.jpg')),
                title: Text("Precinct 7"),
                subtitle: Text("Bahria Town Block"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Map()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
