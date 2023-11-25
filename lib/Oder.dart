import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order #1688068"),
        centerTitle: true,
      ),
      body: ListView(children: [
        const ListTile(
          title: Text("May 31,05:42 PM"),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(
              Icons.brightness_1,
              color: Colors.blue,
              size: 20,
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "Delivered",
              style: TextStyle(fontSize: 17),
            )
          ]),
        ),
        const Divider(
          endIndent: 15,
          indent: 15,
          thickness: 2,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(children: [
            Text("1ITEM"),
            Expanded(
              child: SizedBox(),
            ),
            Icon(
              Icons.receipt,
              color: Colors.blue,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "RECEIPT",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(children: [
            Container(
              width: 60,
              height: 60,
              margin: const EdgeInsets.all(5),
              child: const Image(
                image: AssetImage("assets/images/1687842204_9775966.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Explore | Men | Navy Blue",
                style: TextStyle(fontSize: 20),
              ),
              const Text("1 piece"),
              const Text("Size:XL"),
              Row(children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade100,
                    border: Border.all(),
                  ),
                  child: const Center(
                    child: Text(
                      "1",
                    ),
                  ),
                ),
                const Text(" x ₹799")
              ])
            ]),
            const Expanded(child: SizedBox()),
            const Text("₹799")
          ]),
        ),
        const Divider(
          endIndent: 15,
          indent: 15,
          thickness: 2,
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Item Total",
              style: TextStyle(fontSize: 15),
            ),
            Text("₹799")
          ]),
        ),
        const SizedBox(
          height: 12,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Delivery",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "FREE",
              style: TextStyle(color: Colors.green, fontSize: 15),
            )
          ]),
        ),
        const SizedBox(
          height: 12,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Grand Total",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Text(
              "₹799",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            )
          ]),
        ),
        const Divider(
          endIndent: 15,
          indent: 15,
          thickness: 2,
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text("CUSTOMER DETAILS"),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined),
                label: const Text("SHARE"))
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deepa",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("+91-7829000484", style: TextStyle(fontSize: 16))
              ],
            ),
            Row(children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chat_bubble_outline),
              )
            ])
          ]),
        ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Address",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text("D 1101 Chartered Beverly\nHills,Subramanyapura P.O",
                style: TextStyle(fontSize: 16))
          ]),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "City",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 3,
              ),
              Text("Bangalore", style: TextStyle(fontSize: 16))
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Pincode",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 3,
              ),
              Text("560061", style: TextStyle(fontSize: 16))
            ]),
            SizedBox()
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payment",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Online",
                    style: TextStyle(fontSize: 16),
                  )
                ]),
            Container(
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green.shade100),
              child: const Center(
                child: Text(
                  "PAID",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            )
          ]),
        ),
        const Divider(
          endIndent: 15,
          indent: 15,
          thickness: 2,
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "ADDITIONAL INFORMATION",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "State",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Karnataka",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "greeniceaqua@gmail.com",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                side: const BorderSide(color: Colors.blue),
              ),
              onPressed: () {},
              child: const Text(
                "Share receipt",
                style: TextStyle(fontSize: 20, letterSpacing: 1),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ]),
        )
      ]),
    );
  }
}
