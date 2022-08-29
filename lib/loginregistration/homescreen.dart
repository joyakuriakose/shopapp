import 'package:flutter/material.dart';
import 'package:shopapp/loginregistration/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  "assets/png/splash.png",
                ),
                width: size.width * 5,
                height: size.height / 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100, horizontal: 40),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: kSecondaryColor),
                    onPressed: () {},
                    child: Text("Login With Google")),
              )
            ],
          ),
        ],
      ),
    );
  }
}
