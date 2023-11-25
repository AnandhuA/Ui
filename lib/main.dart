import 'package:flutter/material.dart';
import 'package:z/Oder.dart';
import 'package:z/catalogue.dart';
import 'package:z/homePage.dart';
import 'package:z/additionalInformation.dart';
import 'package:z/payments.dart';
import 'package:z/manageStore.dart';
import 'package:z/screenPremium.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: const HomePage(),
      routes: {
        "AdditionalInformation": (context) => const AdditionalInformation(),
        "ManageStore": (context) => const ManageStore(),
        "Payments": (context) => const Payments(),
        "Premium": (context) => const ScreenPremium(),
        "Order":(context) => const OrderScreen(),
        "catalogue":(context) => Catalogue()
      },
    );
  }
}
