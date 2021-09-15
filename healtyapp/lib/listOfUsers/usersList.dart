import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healtyapp/widget/cartTile.dart';
import 'package:healtyapp/widgets/cartTile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healtyapp/widgets/userTile.dart';


class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFF7F7F7),
            elevation: 0,
            toolbarHeight: 0.15.sh,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 0.05.sh, left: 0.35.sw),
                    child: Image.asset("assets/logo.jpeg")),
                SizedBox(
                  width: 0.20.sw,
                ),
                Container(
                    margin: EdgeInsets.only(left: 0.0.sw, top: 0.08.sh),
                    child: Image.asset("assets/profile.jpeg")),
                SizedBox(
                  width: 20,
                ),
                Container(
                    margin: EdgeInsets.only(left: 0.0.sw, top: 0.08.sh),
                    child: Image.asset("assets/settings.jpeg"))
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: Container(child:
          Column(
              children:[

                Flexible(
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) =>Container(
                        child: UserTile(index),
                      ),
                      addAutomaticKeepAlives: false,
                      itemCount: 8,
                      //cacheExtent: 100.0,
                    ),

                ),


              ]

          ),),
        ),
      ),
    );
  }
}
