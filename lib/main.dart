import 'package:airbnb_clone/pages/city_page.dart';
import 'package:airbnb_clone/pages/onboarding_page.dart';
import 'package:airbnb_clone/widgets/image_carousel.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(
      const MyApp(), // Wrap your app
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Airbnb Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home:  OnBoardingScreen(),
    );
  }
}
