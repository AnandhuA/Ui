import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "AdditionalInformation");
                },
                child: const Text("AdditionalInformation")),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "ManageStore");
                },
                child: const Text("ManageStore")),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "Payments");
                },
                child: const Text("Payments")),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "Premium");
                },
                child: const Text("Premium")),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "Order");
                },
                child: const Text("Order")),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "catalogue");
                },
                child: const Text("Catalogue")),
          ],
        ),
      ),
    );
  }
}
