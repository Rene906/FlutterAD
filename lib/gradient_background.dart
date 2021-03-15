import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget{
  String tittle=" Valhalla Awaits!";

  @override
  Widget build(BuildContext context) {
    final background=Container(
      height: 350,
      decoration: BoxDecoration(

        gradient: LinearGradient(
          colors:[
            Color(0xFF501AE0),
            Color(0xFF361496),
          ],
          begin: FractionalOffset(0.0,0.0),
          end: FractionalOffset(1.0,1.0),
          stops: [0.0,0.5],
          tileMode: TileMode.clamp
        ),
      ),
      child: Text(
        tittle,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Raleway",
          fontWeight: FontWeight.bold,
        ),
      ),
      alignment: Alignment(-0.6,-0.8),
    );
    return background;
  }

}