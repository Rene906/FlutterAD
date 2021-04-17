import 'package:flutter/material.dart';
import 'card_img.dart';
class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("https://bitmunchies.com/wp-content/uploads/2020/11/Assassins-Creed-Valhalla-Asgard-Seers-Hut-.jpg"),
          CardImage("https://www.ester-ribas.com/wp-content/uploads/2019/12/Midgard-mundo-de-los-humanos.png"),
          CardImage("https://pm1.narvii.com/6567/6306197ac3d22a980203bd945c980d02ee92e9d1_hq.jpg"),
          CardImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfUwFUKTDIYHmTgwE0JJfvN_1NxCz_DoTdCw&usqp=CAU"),
          CardImage("https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2018/04/god-war_12.jpg?itok=2WeeeBS9"),
          CardImage("https://oyster.ignimgs.com/mediawiki/apis.ign.com/god-of-war-project/a/af/Sick19.jpg?width=1280"),
          CardImage("https://i.pinimg.com/originals/14/2b/59/142b59a219861e852eaa2dc132614552.png"),
          CardImage("https://kaly36.files.wordpress.com/2012/12/vanaheim-lar-dos-vanir.jpg"),
          CardImage("https://berloga-workshop.com/cache/cache_image/9/920e4817ba50390e8f04649b741b8e1f.png"),
        ],
      ),
    );
  }
  
}