import 'package:flutter/material.dart';
import '../widgets/Description_place.dart';
import '../widgets/review_list.dart';
import '../../../widget/gradient_background.dart';
import '../widgets/card_img_list.dart';
class Home extends StatelessWidget{
  String DummieText="En la mitología nórdica, Midgard (en nórdico antiguo Miðgarðr) es el mundo de los hombres creado por los dioses Odín y sus hermanos, Vili y Ve tras el combate con el gigante primigenio Ymir. La etimología del nombre deriva de mið/mid medio, centro y garðr/gard asentamiento, residencia rural.";
  @override
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Stack(
      children: [

        ListView(
          children: [
            DescriptionPlace("Midgar",4.5,DummieText),
            ReviewList(),
          ],
        ),
        GradientBackground("Valhalla Awaits",300),
        CardImageList(),
      ],
    );
  }
  
}