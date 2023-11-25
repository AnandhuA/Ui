import 'package:flutter/material.dart';

Widget transaction() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    padding: const EdgeInsets.all(17),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(5)),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "Transaction Limit",
        style: TextStyle(fontSize: 30),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "A free limit up to which you will receive the online payments directly in your bank",
        style: TextStyle(fontSize: 21, letterSpacing: 0.7),
      ),
      const SizedBox(
        height: 20,
      ),
      LinearProgressIndicator(
        value: 0.3,
        valueColor: const AlwaysStoppedAnimation(Colors.blue),
        backgroundColor: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
        minHeight: 8,
      ),
      const SizedBox(
        height: 5,
      ),
      const Text(
        "36,668 left out of ₹50,000",
        style: TextStyle(letterSpacing: 0.5, fontSize: 17),
      ),
      const SizedBox(
        height: 10,
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Increase limit",
          style: TextStyle(letterSpacing: 1, fontSize: 16),
        ),
      )
    ]),
  );
}

Widget list(
    {required String title,
    required String leading,
    required IconData icon,
    Color color = Colors.black54}) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(color: color),
    ),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          leading,
          style: const TextStyle(color: Colors.grey),
        ),
        Icon(
          icon,
          color: Colors.grey,
        )
      ],
    ),
  );
}

Widget amount(
    {required String heading, required String amount, required Color color}) {
  return Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: const EdgeInsets.all(19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: const TextStyle(fontSize: 17, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "₹$amount",
            style: const TextStyle(fontSize: 30, color: Colors.white),
          )
        ],
      ),
    ),
  );
}

Widget tab(
    {required String title,
    Color bgcolor = const Color.fromARGB(255, 222, 218, 218),
    Color textcolor = const Color.fromARGB(255, 116, 116, 116)}) {
  return Container(
    height: 40,
    decoration:
        BoxDecoration(color: bgcolor, borderRadius: BorderRadius.circular(30)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Center(
          child: Text(
        title,
        style: TextStyle(letterSpacing: 1.5, fontSize: 15, color: textcolor),
      )),
    ),
  );
}

Widget orderlist(
    {required String image,
    required String order,
    required String date,
    required String price}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image(
              image: AssetImage(
                image,
              ),
              height: 45,
              width: 45,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  "Order #$order",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  date,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "₹$price",
                  style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.brightness_1,
                      color: Colors.green,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Successful",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "₹$price desposited to:588860200000138",
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 3,
        ),
        const Divider()
      ],
    ),
  );
}
