import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      children: [
        Row(
          children: [
            Text(
              "Disease:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Grasshopper",
              style: TextStyle(),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Details:",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum d"),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Precautions/Pesticides:",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
            "- Lorem ipsum dolor sit amet, consectetur \n- Adipiscing elit, sed do eiusmod tempor incididunt u\n- Labore et dolore magna aliqua. Ut enim ad minim veniam \n- Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum d"),
      ],
    );
  }
}
