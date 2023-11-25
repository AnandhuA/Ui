import 'package:flutter/material.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({super.key});

  @override
  State<AdditionalInformation> createState() => _AdditionalInformation();
}

class _AdditionalInformation extends State<AdditionalInformation> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Additional Information"),
      ),
      body: Column(
        children: [
          list(
              leadingIcon: Icons.share,
              title: "Share Dukaan App",
              trailingIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios),
              )),
          list(
              leadingIcon: Icons.language,
              title: "Change Language",
              trailingIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios),
              )),
          list(
              leadingIcon: Icons.message_outlined,
              title: "WhatsApp Chat Support",
              trailingIcon: Switch(
                  value: isSwitch,
                  onChanged: (value) {
                    setState(() {
                      isSwitch = value;
                    });
                  })),
          list(leadingIcon: Icons.lock, title: "Privacy Policy"),
          list(leadingIcon: Icons.star, title: "Rate Us"),
          list(leadingIcon: Icons.logout, title: "Sign Out")
        ],
      ),
    );
  }

  list(
      {required IconData leadingIcon,
      required String title,
      dynamic trailingIcon}) {
    return ListTile(
        leading: IconButton(onPressed: () {}, icon: Icon(leadingIcon)),
        title: Text(title),
        trailing: trailingIcon ?? const SizedBox());
  }
}
