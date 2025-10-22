import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Center(child: Text("Discover The\nWeather In Your City",
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
            height: 1.2,
            color: Colors.white,

          ),
          ),
          ),
          Spacer(),
  Image.asset("assets/cloudy.png",height: 350),
          Spacer(),
          Center(child: Text("Get to know your weather maps and\nradar reciptations forecast",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Colors.white,

            ),
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 30), child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: 
              ),
              onPressed: (){}, child: Text("Get Started")),)
        ],
      ),
      )),
    );
  }
}
