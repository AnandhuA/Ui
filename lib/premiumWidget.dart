import 'package:flutter/material.dart';

Widget featuresList(
    {required String logo, required String title, required String subtitle}) {
  return ListTile(
    isThreeLine: true,
    leading: Image(
      image: AssetImage(logo),
      width: 60,
    ),
    title: Text(
      title,
      style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
    ),
    subtitle: Text(
      subtitle,
      style: const TextStyle(fontSize: 19),
    ),
  );
}

Widget heading({required String heading}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Text(
      heading,
      style: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 0.5),
    ),
  );
}

Widget question({required String q}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListTile(
          title: Text("$q?"),
          trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ),
      ),
      const Divider()
    ],
  );
}

Widget touch({required IconData icon, required String text}) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Container(
      width: 190,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Icon(
            icon,
            size: 50,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    ),
  );
}
