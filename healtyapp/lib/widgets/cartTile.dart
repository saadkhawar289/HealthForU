import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final int index;
  const CartTile(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(index.toString(),
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          title: Text('Sunflower Oil',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('5L',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              Text('0.80',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              Text('remove',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              )
            ],
          ),
          trailing: Image.asset('assets/logo.jpeg'),
        ),
        Divider(
          height: 5,
          thickness: 2,
        )
      ],
    );
  }
}
