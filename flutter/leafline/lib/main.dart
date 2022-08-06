import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'utils/PrimitiveWrapper.dart';
import 'screens/CaptureScreen.dart';
import 'screens/DetailsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light),
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
  PrimitiveWrapper count = PrimitiveWrapper(0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          items: const [
            Icon(
              Icons.camera,
              size: 30,
            ),
            Icon(
              Icons.list_alt,
              size: 30,
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
          child: _pageIndex == 0 ? CaptureScreen() : DetailsScreen(),
        ),
      ),
    );
  }
}
