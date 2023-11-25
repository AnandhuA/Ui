import 'package:flutter/material.dart';
import 'package:z/PaymentScreenWidgets.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Payments"), centerTitle: true, actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.info_outline_rounded),
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ListView(children: [
          transaction(),
          list(
              title: "Default Method",
              leading: "Online Payments",
              icon: Icons.arrow_forward_ios),
          list(
              title: "Payment Profile",
              leading: "Bank Account",
              icon: Icons.arrow_forward_ios),
          const Divider(),
          list(
              title: "Payments Overview",
              color: Colors.black,
              leading: "Life Time",
              icon: Icons.expand_more),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            amount(
                heading: "AMOUNT ON HOLD", amount: "0", color: Colors.orange),
            const SizedBox(
              width: 10,
            ),
            amount(
                heading: "AMOUNT RECEIVED",
                amount: "13,332",
                color: Colors.green)
          ]),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Transactions",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              tab(title: "On hold"),
              tab(
                  title: "Payouts (15)",
                  bgcolor: Colors.blue,
                  textcolor: Colors.white),
              tab(title: "Refunds")
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          //  orderlist(),
          orderlist(
              image: "assets/images/1687842204_9775966.jpg",
              order: "1688068",
              date: "Jul 12,02.06 PM",
              price: "799"),
          orderlist(
              image:
                  "assets/images/Save-The-Date-Calendar-Mug-Personalized-Photo-Mug-Best-Affordable-Anniversary-Gift-1.jpeg",
              order: "1457741",
              date: "Apr 26,07.47 AM",
              price: "397.4"),
          orderlist(
              image: "assets/images/download.jpg",
              order: "1408896",
              date: "Apr 11,10.54 AM",
              price: "686.42"),
          orderlist(
              image:
                  "assets/images/Msi-Rtx-4060-Ti-Gaming-X-Slim-16Gb-Graphics-Card-1.jpg",
              order: "1369633",
              date: "Apr 2,11.29 AM",
              price: "1123.5"),
          orderlist(
              image:
                  "assets/images/Save-The-Date-Calendar-Mug-Personalized-Photo-Mug-Best-Affordable-Anniversary-Gift-1.jpeg",
              order: "1370125",
              date: "Apr 2,11.29 AM",
              price: "1722.75"),
          orderlist(
              image: "assets/images/series_pic2.jpg",
              order: "1370568",
              date: "Apr 1,11.19 AM",
              price: "884.17"),
        ]),
      ),
    );
  }
}
