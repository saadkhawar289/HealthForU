
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountSelection extends StatefulWidget {
  static String tag = "Check Email";

  AccountSelection({required Key key}) : super(key: key);

  @override
  AccountSelectionState createState() => AccountSelectionState();
}

class AccountSelectionState extends State<AccountSelection> {
  int _value = 0;
  bool isFreelancer = false;
  bool isCharity = false;




  final scaffoldKey = GlobalKey<ScaffoldState>(debugLabel: "scaffold-verify-phone");
  final TextEditingController _cnController = TextEditingController();
  final TextEditingController _rnController = TextEditingController();
  Color buttonColor = Colors.red;
  bool isTesting = false;


  @override
  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {

    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: 15,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// select company account
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Center(
                    child: Text(
                      "Visit your GP if you experience the main symptoms of diabetes, which include",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0.sp,
                          fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                  ),
                ),

                RadioListTile(
                  value: 1,
                  dense: true,
                  activeColor: Colors.green,
                  groupValue: _value,
                  onChanged: (dynamic val) {
                    setState(() {
                      _value = val;
                    });
                  },
                  title: Text(
                    "Feeling very thirsty",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                  ),
                ),
                RadioListTile(
                  dense: true,
                  value: 2,
                  activeColor: Colors.green,
                  groupValue: _value,
                  onChanged: (dynamic val) {
                    setState(() {
                      _value = val;
                    });
                  },
                  title: Text(
                    "Feeling very tired",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                  ),
                ),
                RadioListTile(
                  value: 3,
                  dense: true,
                  activeColor: Colors.green,
                  groupValue: _value,
                  onChanged: (dynamic val) {
                    setState(() {
                      _value = val;
                    });
                  },
                  title: Text(
                    "Weight loss and loss of muscle bulk",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                  ),
                ),
                RadioListTile(
                  value: 4,
                  dense: true,
                  activeColor: Colors.green,
                  groupValue: _value,
                  onChanged: (dynamic val) {
                    setState(() {
                      _value = val;
                    });
                  },
                  title: Text(
                    "Itching around the penis or vagina, or frequent episodes of thrush",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w400),
                    maxLines: 2,
                  ),
                ),
                RadioListTile(
                  value: 5,
                  dense: true,
                  activeColor: Colors.green,
                  groupValue: _value,
                  onChanged: (dynamic val) {
                    setState(() {
                      _value = val;
                    });
                  },
                  title: Text(
                    "Blurred vision",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                  ),
                ),
                RadioListTile(
                  value: 6,
                  dense: true,
                  activeColor: Colors.green,
                  groupValue: _value,
                  onChanged: (dynamic val) {
                    setState(() {
                      _value = val;
                    });
                  },
                  title: Text(
                    "Cuts or wounds that heal slowly",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                  ),
                ),
                RadioListTile(
dense: true,
                  value: 7,
                  activeColor: Colors.green,
                  groupValue: _value,
                  onChanged: (dynamic val) {
                    setState(() {
                      _value = val;
                    });
                  },
                  title: Text(
                    "Peeing more frequently than usual, particularly at night",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w400),
                    maxLines: 2,
                  ),
                ),

                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Note",style: TextStyle(fontSize:20.sp,fontWeight: FontWeight.bold,color: Colors.red),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Text(
                    "Type 1 diabetes can develop quickly over weeks or even days",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w600),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 10),
                  child: Text(
                    "Many people have type 2 diabetes for years without realising because the early symptoms tend to be general.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w600),
                    maxLines: 2,
                  ),
                ),
                Center(
                  child:ElevatedButton(
                    child: Text('Finish'),
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20.sp,))),
                  ),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }




}
