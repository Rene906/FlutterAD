import 'package:flutter/material.dart';
import 'package:flutter_app/user/bloc/user_bloc.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'circle_button.dart';
import 'package:flutter/material.dart';
class ButtonsBar extends StatelessWidget{
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc=BlocProvider.of(context);
    return Padding(padding: EdgeInsets.symmetric(
      horizontal: 0,
      vertical: 10.0,
    ),
      child: Row(
        children: [
          CircleButton(true, Icons.turned_in_not, 20, Color.fromRGBO(255, 255, 255, 1),()=>{}),
          CircleButton(true, Icons.card_travel, 20, Color.fromRGBO(255, 255, 255, 0.5),()=>{}),
          CircleButton(false, Icons.add, 40, Color.fromRGBO(255, 255, 255, 1),()=>{}),
          CircleButton(true, Icons.mail_outline, 20, Color.fromRGBO(255, 255, 255, 0.5),()=>{}),
          CircleButton(true, Icons.login_outlined, 20, Color.fromRGBO(255, 255, 255, 1),()=>{userBloc.signOut()}),
        ],
      ),
    );
  }
  
}