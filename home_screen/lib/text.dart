import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyDHARTI.com",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Container(
      child: ListView(
        children: <Widget>[
          CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/imgs/house1.jpeg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/imgs/house2.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/imgs/house3.jpg'),
                        fit: BoxFit.cover)),
              ),
            ],
            options: CarouselOptions(
                height: 200.0, autoPlay: true, viewportFraction: 1),
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
                        child: MaterialButton(
                          color: Colors.deepOrange,
                          onPressed: () {},
                          child: Text(
                            "Bahria town Karachi",
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
                          color: Colors.deepOrange,
                          onPressed: () {},
                          child: Text(
                            "DHA Karachi",
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
                          color: Colors.deepOrange,
                          onPressed: () {},
                          child: Text(
                            "Bahria town Karachi",
                            style: TextStyle(color: Colors.white),
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
                          color: Colors.deepOrange,
                          onPressed: () {},
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
                          color: Colors.deepOrange,
                          onPressed: () {},
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
                          color: Colors.deepOrange,
                          onPressed: () {},
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
                    ListTile(
                      leading: Image.asset('assets/imgs/house2.jpg'),
                      title: Text(
                        '1.2 Crore',
                        textScaleFactor: 1.5,
                      ),
                      trailing: MaterialButton(
                        onPressed: () {},
                        child: Text("View ",
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.deepOrange)),
                        minWidth: 50.0,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                          vertical: 12.0,
                        ),
                      ),
                      subtitle: Text('Bahria Town Karachi'),
                    ),
                    ListTile(
                      leading: Image.asset('assets/imgs/house2.jpg'),
                      title: Text(
                        '1.2 Crore',
                        textScaleFactor: 1.5,
                      ),
                      trailing: MaterialButton(
                        onPressed: () {},
                        child: Text("View ",
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.deepOrange)),
                        minWidth: 50.0,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                          vertical: 12.0,
                        ),
                      ),
                      subtitle: Text('Bahria Town Karachi'),
                    ),
                    ListTile(
                      leading: Image.asset('assets/imgs/house2.jpg'),
                      title: Text(
                        '1.2 Crore',
                        textScaleFactor: 1.5,
                      ),
                      trailing: MaterialButton(
                        onPressed: () {},
                        child: Text("View ",
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.deepOrange)),
                        minWidth: 50.0,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                          vertical: 12.0,
                        ),
                      ),
                      subtitle: Text('Bahria Town Karachi'),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
    Text(
      'COURSE PAGE',
      style: optionStyle,
    ),
    Text(
      'CONTACT asdGFG',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('MyDharti'),
      //   backgroundColor: Colors.green,
      // ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.house), label: "Add Property"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
