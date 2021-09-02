import 'package:flutter/material.dart';
import 'package:home_screen/add_property_plot.dart';
import 'package:home_screen/map.dart';
import 'package:home_screen/property_detail_screen.dart';

class My_Property_Screen extends StatefulWidget {
  @override
  _My_Property_ScreenState createState() => _My_Property_ScreenState();
}

class _My_Property_ScreenState extends State<My_Property_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("My Properties", style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.yellow.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     child: ListTile(
            //       leading: Image(
            //         image: AssetImage('assets/imgs/home1.jpg'),
            //       ),
            //       title: Text("Bahria Town"),
            //       subtitle: Text("Bahria Town Block A"),
            //       trailing: Icon(Icons.edit),
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => Property_Details()));
            //       },
            //     ),
            //   ),
            // ),
            Container(
              height: 160,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/imgs/home1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.yellow.shade900,
              ),
              title: Text("Category Name"),
              subtitle: Text(
                "sub category",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Text(
                "10,000,000 PKR",
                style: TextStyle(color: Colors.yellow.shade900),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.timelapse,
                      color: Colors.yellow.shade900,
                    ),
                    Text("01/12/2021")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.yellow.shade900,
                    ),
                    Text("Renew Ads")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.yellow.shade900,
                    ),
                    Text("Delete Ads")
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                  "Mauris blandit id lectus quis pharetra. In ullamcorper, ligula sit amet rutrum convallis, mauris libero sollicitudin velit, at finibus erat nibh ut mauris."),
            ),
            Divider(
              color: Colors.yellow.shade900,
            ),
            Container(
              height: 160,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/imgs/hom3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.yellow.shade900,
              ),
              title: Text("Category Name"),
              subtitle: Text(
                "sub category",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Text(
                "10,000,000 PKR",
                style: TextStyle(color: Colors.yellow.shade900),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.timelapse,
                      color: Colors.yellow.shade900,
                    ),
                    Text("01/12/2021")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.yellow.shade900,
                    ),
                    Text("Renew Ads")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.yellow.shade900,
                    ),
                    Text("Delete Ads")
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                  "Mauris blandit id lectus quis pharetra. In ullamcorper, ligula sit amet rutrum convallis, mauris libero sollicitudin velit, at finibus erat nibh ut mauris."),
            ),
            Divider(
              color: Colors.yellow.shade900,
            ),
            Container(
              height: 160,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/imgs/house2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.yellow.shade900,
              ),
              title: Text("Category Name"),
              subtitle: Text(
                "sub category",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Text(
                "10,000,000 PKR",
                style: TextStyle(color: Colors.yellow.shade900),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.timelapse,
                      color: Colors.yellow.shade900,
                    ),
                    Text("01/12/2021")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.yellow.shade900,
                    ),
                    Text("Renew Ads")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.yellow.shade900,
                    ),
                    Text("Delete Ads")
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                  "Mauris blandit id lectus quis pharetra. In ullamcorper, ligula sit amet rutrum convallis, mauris libero sollicitudin velit, at finibus erat nibh ut mauris."),
            ),
            Divider(
              color: Colors.yellow.shade900,
            ),
            Container(
              height: 160,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/imgs/home1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.yellow.shade900,
              ),
              title: Text("Category Name"),
              subtitle: Text(
                "sub category",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Text(
                "10,000,000 PKR",
                style: TextStyle(color: Colors.yellow.shade900),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.timelapse,
                      color: Colors.yellow.shade900,
                    ),
                    Text("01/12/2021")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.yellow.shade900,
                    ),
                    Text("Renew Ads")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.yellow.shade900,
                    ),
                    Text("Delete Ads")
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                  "Mauris blandit id lectus quis pharetra. In ullamcorper, ligula sit amet rutrum convallis, mauris libero sollicitudin velit, at finibus erat nibh ut mauris."),
            ),
          ],
        ),
      ),
    );
  }
}
