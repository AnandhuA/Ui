import 'package:flutter/material.dart';

class ManageStore extends StatelessWidget {
  const ManageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall_outlined),
            label: "Orders",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: "Products"),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: "Manage"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Account")
        ],
      ),
      appBar: AppBar(
        title: const Text("Manage Store"),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(15),
        childAspectRatio: 1.4,
        crossAxisCount: 2,
        children: [
          card(
              iconColor: Colors.orange,
              icon: Icons.campaign_outlined,
              first: "Marketing",
              second: "Designs"),
          card(
            iconColor: Colors.green,
            icon: Icons.currency_rupee,
            first: "Online",
            second: "Payments",
          ),
          card(
            iconColor: Colors.orange.shade200,
            icon: Icons.stream_rounded,
            first: "Discount",
            second: "Coupons",
          ),
          card(
            iconColor: Colors.teal,
            icon: Icons.group_outlined,
            first: "My",
            second: "Customers",
          ),
          card(
            iconColor: Colors.grey,
            icon: Icons.qr_code_outlined,
            first: "Store QR",
            second: "Code",
          ),
          card(
            iconColor: Colors.purple,
            icon: Icons.currency_rupee,
            first: "Extra",
            second: "Charges",
          ),
          card(
              iconColor: Colors.pink,
              icon: Icons.format_align_left_outlined,
              first: "Order",
              second: "Form",
              tag: "NEW")
        ],
      ),
    );
  }

  card(
      {required Color iconColor,
      required IconData icon,
      required String first,
      required String second,
      String tag = ""}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: iconColor,
                borderRadius: BorderRadius.circular(5),
              ),
              height: 40,
              width: 40,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            tag.isEmpty
                ? const SizedBox()
                : Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green),
                    child: Text(
                      tag,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
            // Text(
            //   ne,
            //   style:
            //       TextStyle(backgroundColor: Colors.green, color: Colors.white),
            // )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          first,
          style: const TextStyle(fontSize: 25),
        ),
        Text(
          second,
          style: const TextStyle(fontSize: 25),
        )
      ]),
    );
  }
}
