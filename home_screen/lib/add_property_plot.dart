import 'package:flutter/material.dart';
import 'package:home_screen/home.dart';
import 'package:home_screen/otp_screen.dart';

class Add_Property_Plot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Add Property UI",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _radioColor = Colors.black;
  String colorGroupVal = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: (Text("Add Propoerty", style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.yellow.shade900,
      ),
      // resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 28.0),
              //   child: Text(
              //     "Add Property",
              //     style: TextStyle(color: Colors.black, fontSize: 24.0),
              //   ),
              // ),
              Stack(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: 400.0,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 5.0,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                      value: Colors.deepOrange,
                                      groupValue: colorGroupVal,
                                      onChanged: null,
                                    ),
                                    Text(
                                      "PLOT",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 100.0),
                                      child: Radio(
                                        value: Colors.deepOrange,
                                        groupValue: colorGroupVal,
                                        onChanged: null,
                                      ),
                                    ),
                                    Text(
                                      "HOUSE",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                      value: Colors.deepOrange,
                                      groupValue: colorGroupVal,
                                      onChanged: null,
                                    ),
                                    Text(
                                      "BUYER",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 90.0),
                                      child: Radio(
                                        value: Colors.deepOrange,
                                        groupValue: colorGroupVal,
                                        onChanged: null,
                                      ),
                                    ),
                                    Text(
                                      "SELLER",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10.0,
                                ),
                                child: TextField(
                                  autocorrect: false,
                                  autofocus: false,
                                  style: TextStyle(fontSize: 16.0),
                                  decoration: InputDecoration(
                                      hintText: "Enter Society Name",
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      contentPadding: EdgeInsets.all(15.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10.0,
                                ),
                                child: TextField(
                                  autocorrect: false,
                                  autofocus: false,
                                  style: TextStyle(fontSize: 16.0),
                                  decoration: InputDecoration(
                                      hintText: "Enter Sub Category",
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      contentPadding: EdgeInsets.all(15.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10.0,
                                ),
                                child: TextField(
                                  autocorrect: false,
                                  autofocus: false,
                                  style: TextStyle(fontSize: 16.0),
                                  decoration: InputDecoration(
                                      hintText: "Enter Price",
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      contentPadding: EdgeInsets.all(15.0)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 9.0),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Container(
                                    width: 500,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.yellow.shade900)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text("MAP LOCATION",
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.yellow.shade900)),
                                      ),
                                    ),
                                  ),
                                  minWidth: 250.0,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 12.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 9.0),
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home()));
                                  },
                                  child: Text("SUBMIT",
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.white)),
                                  minWidth: 250.0,
                                  color: Colors.yellow.shade900,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 12.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
