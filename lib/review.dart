import 'package:flutter/material.dart';
import 'snow.dart';

class Review extends StatelessWidget{
  String pathImage="";
  String name ="";
  String details="";
  String comment="";
  double topDistance= -3.0;
  double size= 14.0;
  Review(this.pathImage,this.name,this.details,this.comment);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final photo=Container(
      margin: EdgeInsets.only(
        top:20.0,
        left:20.0,
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit:BoxFit.cover,
              image:NetworkImage(pathImage)
      ),
    ),
    );
    final userName=Container(
      margin: EdgeInsets.only(
        right:40.0,
        left:20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style:TextStyle(
          fontFamily: "Raleway",
          fontSize: 17,
        ),
      ),
    );

    final userDetails=Container(
      margin: EdgeInsets.only(
        left:20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style:TextStyle(
          fontFamily: "Raleway",
          fontSize: 14,
          color: Color(0xFF000000)
        ),
      ),
    );

    final userComment=Container(
      margin: EdgeInsets.only(
        left:20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style:TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.w900,
            fontSize: 14,
            color: Color(0xFF000000)
        ),
      ),
    );

    final userInfo= Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row (
          children: [
            userDetails,
            Star(Color(0xFF058FC2),Icons.ac_unit_outlined,topDistance,size),
            Star(Color(0xFF058FC2),Icons.ac_unit_outlined,topDistance,size),
            Star(Color(0xFF058FC2),Icons.ac_unit_outlined,topDistance,size),
            Star(Color(0xFF000406),Icons.anchor,topDistance,size),
            Star(Color(0xFF6E2C00),Icons.account_balance,topDistance,size),



          ],
        ),
        userComment,
      ],
    );
   return Row(
     children: [
       photo,
       userInfo
     ],
   );
  }

}