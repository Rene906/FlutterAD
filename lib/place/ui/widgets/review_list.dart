import 'package:flutter/material.dart';
import 'review.dart';
class ReviewList extends StatelessWidget{
  String pathImage1="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI5nlTK-e8ULYq08BbXOm0gtmpmaF0-5Z8Cg&usqp=CAU";
  String name1 ="Eivor";
  String details1="20 reviews-20 photos";
  String comment1="fighting drinking and feasting";

  String pathImage2="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmpBT-m2mXfv07k2jFFwh7dAiBOmUmqFegqg&usqp=CAU";
  String name2 ="Baldur";
  String details2="20 reviews-10 photos";
  String comment2="I feel";

  String pathImage3="https://static.wikia.nocookie.net/godofwar/images/f/fc/Jormungand036.png/revision/latest/top-crop/width/360/height/360?cb=20170614091216";
  String name3 ="jormungandr";
  String details3="Serpent of the world";
  String comment3="hello";

  String pathImage4="https://www.emp-online.es/dw/image/v2/BBQV_PRD/on/demandware.static/-/Sites-master-emp/default/dw32fb89cd/images/3/1/9/6/319689d-emp.jpg?sfrm=png";
  String name4 ="Odin";
  String details4="All father";
  String comment4="I hate Fenrir";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin:EdgeInsets.only(
            top: 20.0,
            left:20.0,
          ),
        child:Text(
          "All reviews",
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
            fontFamily: "Raleway",
          ),
        ),
        ),
        Review(pathImage1,name1,details1,comment1),
        Review(pathImage2,name2,details2,comment2),
        Review(pathImage3,name3,details3,comment3),
        Review(pathImage4,name4,details4,comment4),
        Review(pathImage1,name1,details1,comment1),
        Review(pathImage2,name2,details2,comment2),
        Review(pathImage3,name3,details3,comment3),
        Review(pathImage4,name4,details4,comment4),

      ],
    );
  }

}