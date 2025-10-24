import 'package:flutter/material.dart';
import 'package:skymood/Utils/colors.dart';
import 'package:skymood/View/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
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
            color: Theme.of(context).colorScheme.secondary,

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
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WeatherAppHomeScreen(),));
              }, child: Text("Get Started",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),)),)
        ],
      ),
      )),
    );
  }
}
