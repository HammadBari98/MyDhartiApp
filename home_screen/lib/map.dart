import 'package:flutter/material.dart';
import 'package:home_screen/property_detail_screen.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Map", style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.yellow.shade900,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blueGrey,
            width: MediaQuery.of(context).size.height * 0.7,
            height: MediaQuery.of(context).size.height * 0.88,
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Property_Details()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/imgs/mapone.jpg',
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
