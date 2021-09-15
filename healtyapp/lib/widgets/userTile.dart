import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserTile extends StatelessWidget {
  final int index;
  const UserTile(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover ,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.screen),
                    image: AssetImage('assets/avatar.jpg'))),
            height: 100.h,
            width: 60.w,
          ),
          title: Text('Saad Khawar',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ss123@gmail.com',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              Text('03131533387',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          trailing: Column(
            children: [
              Icon(Icons.delete),
              SizedBox(
                height: 5,
              ),
              Icon(Icons.edit),
            ],
          ),
        ),
        Divider(
          height: 5,
          thickness: 2,
        )
      ],
    );
  }
}
