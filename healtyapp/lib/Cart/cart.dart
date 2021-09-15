import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healtyapp/widgets/cartTile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
          body: Container(
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '2 items',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
              Flexible(
                flex: 8,
                child: Container(
                  color: const Color(0xFFF7F7F7),
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) => Container(
                      child: CartTile(index),
                    ),
                    addAutomaticKeepAlives: false,
                    itemCount: 25,
                    //cacheExtent: 100.0,
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Container(
                height: 40,
                width: 40,
                // flex: 1,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                          Radius.circular(25.r))),
                child: Image.asset('assets/addToCart.jpeg'),
              ),
              SizedBox(
                height: 35.h,
              ),
              Flexible(
                  flex: 2,
                  child: Container(

                      // height: 0.80.sh,//MediaQuery.of(context).size.height*0.20,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.036.sw),
                              child: Container(
                                child: Column(
                                  children: [
                                    Text('Total',
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w400)),
                                    Text('0.80',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/checkout');
                              },
                              child: Container(
                                color: Colors.grey[350],
                                width: 0.60.sw,
                                height: 0.08.sh,
                                child: Center(
                                  child: Text('Checkout',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                            )
                          ],
                        ),
                      )))
            ]),
          ),
        ),
      ),
    );
  }
}
