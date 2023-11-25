import 'package:flutter/material.dart';
import 'package:z/premiumWidget.dart';

class ScreenPremium extends StatelessWidget {
  const ScreenPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Dukaan Premium"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Stack(children: [
          Container(
            height: 150,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(10)),
            child: Column(children: [
              const Image(
                image: AssetImage("assets/images/logo.png"),
                width: 200,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Get Dukaan Premium for just\n₹4,999/year",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 33),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "All the advanced featurea for scaling your\nbusiness.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 15,
              ),
            ]),
          )
        ]),
        heading(heading: "Features"),
        featuresList(
            logo: "assets/images/world.png",
            title: "Custom domain name",
            subtitle:
                "Get your own custom domain and build your brand on the internet."),
        featuresList(
          logo: "assets/images/tick.png",
          title: "Verified seller badge",
          subtitle:
              "Get green verified badge under your store name and build trust.",
        ),
        featuresList(
          logo: "assets/images/lap.png",
          title: "Dukaan for PC",
          subtitle:
              "Access all the exclusive premium features on Dukaan for PC.",
        ),
        featuresList(
          logo: "assets/images/head.png",
          title: "Priority support",
          subtitle:
              "Get your questions resolved with our priority customer support.",
        ),
        Divider(
          height: 50,
          thickness: 5,
          color: Colors.grey.shade200,
        ),
        heading(heading: "What is Dukaan Premium"),
        Container(
          margin: const EdgeInsets.all(20),
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: const Image(
                image: AssetImage("assets/images/thumb.png"),
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: const Image(
                    image: AssetImage("assets/images/pngwing.com.png"),
                    width: 100,
                  ),
                ),
              ),
            )
          ]),
        ),
        Divider(
          height: 30,
          thickness: 5,
          color: Colors.grey.shade200,
        ),
        heading(heading: "Frequently asked questions"),
        const SizedBox(
          height: 20,
        ),
        question(q: "What types of businesses can use Dukaan Premium"),
        question(q: "What is your refund policy"),
        question(q: "Will there be an automatic charge after the paid trial"),
        question(q: "What payment methods do you offer"),
        question(q: "What happens when my free trial ends"),
        question(q: "what are the terms for the custom domain"),
        Divider(
          height: 50,
          thickness: 5,
          color: Colors.grey.shade200,
        ),
        heading(heading: "Need help? Get in touch"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            touch(icon: Icons.chat_bubble_outline, text: "Live Chat"),
            touch(icon: Icons.call_outlined, text: "Phone Call")
          ],
        ),
        Divider(
          height: 30,
          thickness: 2,
          color: Colors.grey.shade200,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(minimumSize: const Size(180, 60)),
                onPressed: () {},
                child: const Text(
                  "Select Domain",
                  style: TextStyle(fontSize: 23),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(250, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: const Text(
                    "Get Premium",
                    style: TextStyle(fontSize: 23),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
