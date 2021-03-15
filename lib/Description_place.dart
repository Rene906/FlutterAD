import 'package:flutter/material.dart';
import 'snow.dart';
import 'gradient_button.dart';

class DescriptionPlace extends StatelessWidget{
  double topDistance=360.0;
  String descriptionText="Lorem Ipsum es simplemente texto de relleno de la industria de la impresión y la composición tipográfica. Lorem Ipsum ha sido el texto de relleno estándar de la industria desde el año 1500, cuando un impresor desconocido tomó una galera de tipos y la mezcló para hacer un libro de muestras tipográficas.";
  String name="Midgar";
  double stars;
  DescriptionPlace(this.name,this.stars,this.descriptionText);
  @override
  Widget build(BuildContext context) {

    final namePlace= Container(
      margin:EdgeInsets.only(
        top:topDistance,
        left:20.0,
        right:20.0,
      ),
      child:Text(
        name,
        style: TextStyle (
          fontFamily: "",
          fontSize: 30.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    );

    final description= Container(
      margin:EdgeInsets.only(
        top: 20.0,
        left:20.0,
        right:20.0,
      ),
      child:Text(
          descriptionText,
        style:TextStyle(
          fontFamily: "Raleway",
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color:Color(0xFF0B0B0C),
        ),
      ),
    );

    final tittleStars=Row(
      children: [
        namePlace,
        Row(
          children: [
            Star(Color(0xFF058FC2),Icons.ac_unit_outlined,topDistance),
            Star(Color(0xFF058FC2),Icons.ac_unit_outlined,topDistance),
            Star(Color(0xFF058FC2),Icons.ac_unit_outlined,topDistance),
            Star(Color(0xFF000406),Icons.anchor,topDistance),
            Star(Color(0xFF6E2C00),Icons.account_balance,topDistance),


          ],
        ),
      ],
    );
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        tittleStars,
        description,
        GradientButton("Action")
      ],
    );
  }

}