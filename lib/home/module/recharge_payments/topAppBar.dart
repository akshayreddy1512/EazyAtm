import 'package:case3/home/model/CardContent.dart';
import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage(AppImage.countryImage),
          //backgroundColor: Colors.red,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "Guwahati",
          style: TextStyle(
              fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 2,
        ),
        const Icon(
          Icons.arrow_drop_down,
          color: Colors.white,
          size: 30,
        ),
        const Spacer(
          flex: 2,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_on_outlined)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.account_circle_outlined))
      ],
    );
  }
}
