import 'package:flutter/material.dart';

import 'Pages/CustomerLoginSignup.dart';
import 'Pages/DriverRegistration.dart';
import 'Pages/FeedbackPage.dart';
import 'Pages/CarDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Colors.blueAccent,
        buttonColor: Colors.green,
      ),
      home: CarDetails(),
    );
  }
}
