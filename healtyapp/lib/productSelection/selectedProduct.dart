import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healtyapp/widget/cartTile.dart';

class SelectedProduct extends StatefulWidget {
  const SelectedProduct({Key? key}) : super(key: key);

  @override
  _SelectedProductState createState() => _SelectedProductState();
}

class _SelectedProductState extends State<SelectedProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back_ios),
            iconTheme: Theme.of(context).iconTheme,
          ),
          body: Padding(
            padding: EdgeInsets.all(10.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 0.12.sh,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width: 0.10.sw,
                                  decoration: BoxDecoration(
                                      color: Colors.red[200],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25.r)))))),
                      SizedBox(
                        width: 0.04.sw,
                      ),
                      Container(
                          height: 0.12.sh,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width: 0.10.sw,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25.r)))))),
                      SizedBox(
                        width: 0.04.sw,
                      ),
                      Container(
                          height: 0.12.sh,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Icon(
                              Icons.verified,
                              size: 35.sp,
                              color: Colors.green,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.06.sh,
                ),
                Center(
                    child: Text(
                  'Great! This is ideal for you',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                )),
                SizedBox(
                  height: 0.06.sh,
                ),
                Container(
                  color: Colors.grey[300],
                  child: CheckOutCartTile(1),
                ),
                SizedBox(
                  height: 0.06.sh,
                ),
                Text('Benefits',
                    style: TextStyle(
                        fontSize: 25.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 0.04.sh,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          Icon(
                            Icons.verified,
                            size: 35.sp,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 0.02.sw,
                          ),
                          Text(
                            'Low in sugar',
                            style: TextStyle(fontSize: 20.sp),
                          )
                        ],
                      ),
                    ),
                    //SizedBox(width: 0.10.sw,),

                    Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          Icon(
                            Icons.verified,
                            size: 35.sp,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 0.01.sw,
                          ),
                          Text(
                            'High in Fiber',
                            style: TextStyle(fontSize: 20.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Center(
                  child: Container(
                    color: Colors.grey[350],
                    width: 0.90.sw,
                    height: 0.08.sh,
                    child: Center(
                      child: Text('Add to basket',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w500)),
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
