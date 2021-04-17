import 'package:flutter/material.dart';
class ProfileBackground extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: ScreenWidth,
      height: ScreenHeight*0.47,
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
          )
      ),
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-2,-1),
        child: Container(
          width: ScreenWidth*1.5,
          height: ScreenHeight*.8,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            borderRadius: BorderRadius.circular(ScreenHeight*0.5)
          ),
        ),

      ),
    );
  }
  
}