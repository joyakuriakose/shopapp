import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:shopapp/screens/widgets/fruitlist.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: FruitPage(),
//   ));
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text(
          'Fresh Zone',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          // Chip(
          //   padding: EdgeInsets.all(0),
          //   backgroundColor: Colors.deepPurple,
          //   label: Text('BADGE', style: TextStyle(color: Colors.white)),
          // ),
          // Badge(
          //   toAnimate: true,
          //   animationDuration: Duration(microseconds: 300),
          //   shape: BadgeShape.square,
          //   badgeColor: Colors.deepPurple,
          //   borderRadius: BorderRadius.circular(8),
          //   badgeContent: Text('BADGE', style: TextStyle(color: Colors.white)),
          // ),
          Center(
            child: Badge(
                child: Icon(
                  Icons.shopping_cart,
                  size: 28,
                ),
                badgeContent: Text(
                  '0',
                  style: TextStyle(color: Colors.white),
                ),
                animationDuration: Duration(microseconds: 300)),
          ),

          SizedBox(width: 10)
        ],
      ),
      body: Stack(
        children: [
          FruitList(),

        ],
      ),
    );
  }
}
