import 'package:flight_app/CustomShapeClipper.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Flight Listings',
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
));

Color firstColor = Color(0xfff47d15);
Color secondColor = Color(0xffef772c);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HomeScreenTopPart()
        ],
      ),
    );
  }
}

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400,
            // color: Colors.orange,
            decoration: BoxDecoration(gradient: LinearGradient(colors: [firstColor, secondColor])),
          ),
        )
      ],
    );
  }
}