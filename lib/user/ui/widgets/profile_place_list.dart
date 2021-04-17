import 'package:flutter/material.dart';
import 'profile_place.dart';
import 'package:flutter_app/place/model/place.dart';
//ignore_must_be_inmutable
class ProfilePlaceList extends StatelessWidget{
  Place place1=Place ("Iceland","Iceland is a remote island located in the North Atlantic Ocean in the Mid-Atlantic Mountain Range.","Tourist atracction","100,0000");
  String place1Img="https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2019/10/03/1f53926b-f0a1-413d-a15a-537593ce9460/iceland-waterfalls-scene";

  Place place2=Place("Norway","Norway is a country located in northern Europe in the northern and western parts of the Scandinavian peninsula","Touristic Place","200,00");
  String place2Img="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/90/45/f3/a-noruega-fica-no-norte.jpg?w=1000&h=-1&s=1";



  Place place3=Place("Denmark","It consists of the Jutland Peninsula and several islands in the Baltic Sea, known as the Danish Archipelago.","Touristic place","28880");
  String place3Img="https://www.lavanguardia.com/files/image_449_220/uploads/2019/11/18/5fa53a1d85fc4.jpeg";

  Place place4=Place("Sweden","it is a Nordic country in northern Europe","Tourist land","80,0000,0000");
  String place4Img="https://ichef.bbci.co.uk/news/640/cpsprodpb/1456B/production/_109570338_gettyimages-1132919653.jpg";



  @override
  Widget build(BuildContext context) {
    double screenHeight= MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(
        top:screenHeight*0.50,
        right:20.0,
        left: 20.0,
        bottom: 10.0,
      ),
      child: Column(
        children: [
          ProfilePlace(place1Img, place1),
          ProfilePlace(place2Img, place2),
          ProfilePlace(place3Img, place3),
          ProfilePlace(place4Img, place4),

        ],
      ),
    );
  }

}