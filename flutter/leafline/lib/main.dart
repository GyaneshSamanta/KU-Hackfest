import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const Leafline(),
    );
  }
}

class Leafline extends StatefulWidget {
  const Leafline({Key? key}) : super(key: key);

  @override
  _LeaflineState createState() => _LeaflineState();
}

class _LeaflineState extends State<Leafline> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          items: const [
            Icon(
              Icons.camera,
              size: 35,
            ),
            Icon(
              Icons.list_alt,
              size: 35,
            )
          ],
          onTap: (index) {
            setState(() {
              _pageIndex = index;
            });
          },
          animationDuration: Duration(milliseconds: 250),
          buttonBackgroundColor: Colors.lightGreen,
          backgroundColor: Colors.white,
          color: Colors.green,
        ),
        body: Center(
          child: ListView(
            children: [
              _pageIndex==0?Container(child: Text("Capture"),):Container(child: Text("Details"),)
            ],
          ),
        ),
      ),
    );
  }
}
