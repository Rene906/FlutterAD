import 'package:flutter/material.dart';
import 'package:flutter_app/user/ui/widgets/profile_background.dart';
import 'profile_header.dart';
import 'package:flutter_app/user/ui/widgets/profile_place_list.dart';
class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Stack(
      children:[

        ListView(
          children: [
            ProfilePlaceList()

          ],
        ),
        ProfileBackground(),
        ProfileHeader()

      ],
    );
  }

}