import 'package:flutter/material.dart';
import 'package:flutter_app/review_list.dart';
import 'Description_place.dart';
import 'review_list.dart';
import 'gradient_background.dart';
import 'card_img_list.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  String DummieText="En la mitología nórdica, Midgard (en nórdico antiguo Miðgarðr) es el mundo de los hombres creado por los dioses Odín y sus hermanos, Vili y Ve tras el combate con el gigante primigenio Ymir. La etimología del nombre deriva de mið/mid medio, centro y garðr/gard asentamiento, residencia rural.";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
        children: [

        ListView(
        children: [
        DescriptionPlace("Midgar",4.5,DummieText),
          ReviewList()
    ],
    ),
          GradientBackground(),
          CardImageList(),
    ],
      ),
      ),
    );
  }
}

