import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HealthInfo extends StatefulWidget {
  const HealthInfo({Key? key}) : super(key: key);

  @override
  _HealthInfoState createState() => _HealthInfoState();
}

class _HealthInfoState extends State<HealthInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Icon(Icons.clear),
            iconTheme: Theme.of(context).iconTheme,
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Exciting User ?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18.sp)),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Log in',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18.sp)),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                      height: 0.12.sh,
                      child: Image.asset('assets/SplashLogoo.jpeg')),
                ),
                SizedBox(
                  height: 0.06.sh,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Health Information',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w500),),
                ),
                Center(
                  child: Container(
                    color: Colors.grey[350],
                    width: 0.90.sw,
                    height: 0.08.sh,
                    child: Center(
                      child: Text('No',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Center(
                  child: Container(
                    color: Colors.grey[350],
                    width: 0.90.sw,
                    height: 0.08.sh,
                    child: Center(
                      child: Text('Yes',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Center(
                  child: Container(
                    color: Colors.grey[350],
                    width: 0.90.sw,
                    height: 0.08.sh,
                    child: Center(
                      child: Text('Don\'t Know',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
