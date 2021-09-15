import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentVerifiaction extends StatefulWidget {
  const PaymentVerifiaction({Key? key}) : super(key: key);

  @override
  _PaymentVerifiactionState createState() => _PaymentVerifiactionState();
}

class _PaymentVerifiactionState extends State<PaymentVerifiaction> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset('assets/paymentCompleted.jpeg'),
                ),
            SizedBox(
              height: 0.06.sh,
            ),
                Center(
                  child: Text('Your Payment is successfully completed',
                      style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400)),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
