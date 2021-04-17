import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/user/bloc/user_bloc.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'place/ui/screens/home.dart';
import 'place/ui/screens/search.dart';
import 'user/ui/screens/profile.dart';
// ignore: camel_case_types
class App_cupertino extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:null),
            BottomNavigationBarItem(icon: Icon(Icons.person),label:null),
            BottomNavigationBarItem(icon: Icon(Icons.search),label:null),
          ],
        ),
        tabBuilder: (BuildContext context,int index){
          switch(index){
              case 0:
              return CupertinoTabView(
                builder:(BuildContext context)=>Home(),
              );
            break;
            case 1:
              return CupertinoTabView(
              builder:(BuildContext context){
                return BlocProvider(
                    child: Profile(),
                    bloc: UserBloc(),
                );

              },
            );
            break;
            case 2:
              return CupertinoTabView(
              builder:(BuildContext context)=>Search(),
            );
              break;
            default:
              return null;
          }
        },
      ),
    );
  }
  
}