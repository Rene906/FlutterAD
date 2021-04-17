import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/user/bloc/user_bloc.dart';
import 'package:flutter_app/user/model/user.dart';
import 'package:flutter_app/user/ui/widgets/user_info.dart';
import 'package:flutter_app/user/ui/widgets/buttons_bar.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileHeader extends StatelessWidget {
  UserBloc  userBloc;
  @override
  Widget build(BuildContext context) {

    userBloc=BlocProvider.of(context);
    User user;
    Widget ShowProfileData(AsyncSnapshot snapshot){
      if(!snapshot.hasData||snapshot.hasError){
        return Container(
          margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
              top:50.0
          ),
          child: Column(
            children: <Widget>[
              CircularProgressIndicator(),
              Text("The information could not be loaded.")
            ],
          ),
        );
      }else{
        print(snapshot.data);
        user=User(name: snapshot.data.displayName,email: snapshot.data.email,photoURL:snapshot.data.photoUrl);
        final tittle= Text(
          "Profile",
          style: TextStyle(
              fontFamily: "Raleway",
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32.0
          ),
        );
        return Container(
          margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 65,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  tittle,
                ],
              ),

              UserInfo(user),
              ButtonsBar()
            ],
          ),
        );
      }
    }
    return StreamBuilder(
        stream: userBloc.streamFirebase,
        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            case ConnectionState.active:
              return ShowProfileData(snapshot);
            case ConnectionState.done:
              return ShowProfileData(snapshot);

            }

          }

    );
  }
  
}

  
