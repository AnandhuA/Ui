import 'package:flutter/material.dart';
import 'package:z/PaymentScreenWidgets.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Catalogue"),
            centerTitle: true,
            bottom: TabBar(tabs: [
              tab(
                  title: "Products",
                  bgcolor: Colors.blue,
                  textcolor: Colors.white),
              tab(
                  title: "Categories",
                  bgcolor: Colors.blue,
                  textcolor: Colors.white)
            ]),
          ),
          body: ListView(
            children: [
              product(
                image: "assets/images/1687842204_9775966.jpg",
                name: "Men Printed Round...",
                price: "799",
              ),
              product(
                image:
                    "assets/images/boat-rockerz-450-bluetooth-on-ear-headphones-with-mic.jpg",
                name: "Boat-rockerz-450...",
                price: "1,500",
              ),
              product(
                image:
                    "assets/images/Save-The-Date-Calendar-Mug-Personalized-Photo-Mug-Best-Affordable-Anniversary-Gift-1.jpeg",
                name: "Mug | Explore",
                price: "399",
              ),
              product(
                image:
                    "assets/images/Msi-Rtx-4060-Ti-Gaming-X-Slim-16Gb-Graphics-Card-1.jpg",
                name: "Msi-Rtx-4060-Gaming...",
                price: "5,399",
              ),
              product(
                image:
                    "assets/images/Msi-Rtx-4060-Ti-Gaming-X-Slim-16Gb-Graphics-Card-1.jpg",
                name: "Msi-Rtx-4060-Gaming...",
                price: "5,399",
              ),
              product(
                image: "assets/images/1687842204_9775966.jpg",
                name: "Men Printed Round...",
                price: "799",
              ),
            ],
          )),
    );
  }

  Widget product(
      {required String image, required String name, required String price}) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 90,
                height: 100,
                child: Image(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 23),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text("1 piece"),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "₹$price",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "In stock",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
              Expanded(child: SizedBox()),
              Column(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                  Switch(value: true, onChanged: (value) {})
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                side: BorderSide(color: Colors.grey.shade200)),
            onPressed: () {},
            label: Text(
              "Share Product",
              style: TextStyle(color: Colors.black, fontSize: 19),
            ),
            icon: Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
