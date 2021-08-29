import 'package:flutter/material.dart';
import 'package:home_screen/map.dart';
import 'package:home_screen/precinct_list.dart';

class Select_City extends StatefulWidget {
  @override
  _Select_CityState createState() => _Select_CityState();
}

class _Select_CityState extends State<Select_City> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Select City", style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.yellow.shade900,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blueGrey,
            width: double.infinity,
            height: 250,
            child: Image(
              image: AssetImage(
                'assets/imgs/selectCity.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 250,
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Precinct_List()));
                  },
                  child: Container(
                    height: 50,
                    width: 250,
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
                          width: 200,
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 10.0),
                          child: Center(
                            child: Text(
                              "Karachi",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade900,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(95.0),
                              topLeft: Radius.circular(95.0),
                              bottomRight: Radius.circular(250.0),
                            ),
                          ),
                        ),
                        Center(
                            child: Icon(
                          Icons.location_city,
                          size: 22.0,
                          color: Colors.yellow.shade900,
                        ))
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
              width: 250,
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Precinct_List()));
                  },
                  child: Container(
                    height: 50,
                    width: 250,
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
                          width: 200,
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 10.0),
                          child: Center(
                            child: Text(
                              "LAHORE",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade900,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(95.0),
                              topLeft: Radius.circular(95.0),
                              bottomRight: Radius.circular(250.0),
                            ),
                          ),
                        ),
                        Center(
                            child: Icon(
                          Icons.location_city,
                          size: 22.0,
                          color: Colors.yellow.shade900,
                        ))
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
              width: 250,
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Precinct_List()));
                  },
                  child: Container(
                    height: 50,
                    width: 250,
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
                          width: 200,
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 10.0),
                          child: Center(
                            child: Text(
                              "ISLAMABAD",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade900,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(95.0),
                              topLeft: Radius.circular(95.0),
                              bottomRight: Radius.circular(250.0),
                            ),
                          ),
                        ),
                        Center(
                            child: Icon(
                          Icons.location_city,
                          size: 22.0,
                          color: Colors.yellow.shade900,
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
