import 'package:flutter/material.dart';
class LikeButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LikeButton();
  }

}
class _LikeButton extends State<LikeButton>{
bool _state = false;
void onPressedLike(){
  setState(() {
    _state=!this._state;
  });
}

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: onPressedLike,
        mini:true,
        backgroundColor: Color(0xFFF90C0C),
      child: Icon(
       this._state ? Icons.favorite:Icons.favorite_border
      )
    );
  }
}