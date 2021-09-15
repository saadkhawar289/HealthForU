import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healtyapp/Cart/cart.dart';
import 'package:healtyapp/listOfUsers/usersList.dart';
import 'package:healtyapp/paymentVerification/paymentVerified.dart';
import 'package:healtyapp/productSelection/selectedProduct.dart';
import 'package:healtyapp/qrCode/qrCode.dart';

import 'ScanQr/qrScanner.dart';
import 'chartScreen/chart.dart';
import 'checkout/checkout.dart';
import 'diabitiesSymptoms/diabitiesSymptoms.dart';
import 'healthInfo/healthInfo.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp(), enabled: true));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  brightness: Brightness.light,
                  primarySwatch: Colors.indigo,
                  buttonColor: Colors.red,
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
                routes: {
                  '/': (BuildContext context) =>AccountSelection(key: ValueKey('123'),),//Cart(),//UsersList(),//QRViewExample(),//SelectedProduct(),//HealthInfo(),//Chart(),//PaymentVerifiaction(),// QrScanner(),
                  '/checkout': (BuildContext context) => Checkout(),
                  '/QrCode': (BuildContext context) => QrScanner(),



                }));
  }
}
