import 'package:flutter/material.dart';
import '../../../widget/like_button.dart';
class CardImage extends StatelessWidget{
  String pathImage="";
  CardImage(this.pathImage);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card= Container(
      height: 300.0,
      width: 350,
      margin: EdgeInsets.only(
        top: 100.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15.0,
            offset:Offset(0.0,0.5)
          )
        ]
      ),
    );
    return Stack(
      alignment: Alignment(0.9,0.9),
      children: [
        card,
        LikeButton()
      ],
    );
  }
  
}