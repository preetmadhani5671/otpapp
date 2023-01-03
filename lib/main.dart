import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OTPAPP(),
    ),
  );
}

class OTPAPP extends StatefulWidget {
  const OTPAPP({Key? key}) : super(key: key);

  @override
  State<OTPAPP> createState() => _OTPAPPState();
}

class _OTPAPPState extends State<OTPAPP> {

  TextEditingController txtEnterOTPlength = TextEditingController();
  List no = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;
  int f = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15172B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               "OTP Generator",
               style: TextStyle(color: Color(0xffF6DB87), fontSize: 40),
             ),
           ],
         ),
          Container(
            height: 40,
            width: 350,
            child: TextField(
              style: TextStyle(color: Color(0xffFCF6BA)),
              controller: txtEnterOTPlength,
              decoration: InputDecoration(
                hintText: 'Enter  OTP  length.',
                hintStyle: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffFCF6BA),
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Color(0xfffcf6ba)),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              String otp = txtEnterOTPlength.text;
              int i = int.parse(otp);
              Random r1 = Random();
              Random r2 = Random();
              Random r3 = Random();
              Random r4 = Random();
              Random r5 = Random();
              Random r6 = Random();
              setState(() {
                a = r1.nextInt(i)+1;
                b = r2.nextInt(i)+1;
                c = r3.nextInt(i)+1;
                d = r4.nextInt(i)+1;
                e = r4.nextInt(i)+1;
                f = r4.nextInt(i)+1;
              });
            },
            child: Card(
              elevation: 2,
              shadowColor: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Color(0xffffe8db), Color(0xfff6db87)],
                  ),
                ),
                child: Text(
                  'Generate OTP',
                  style: TextStyle(color:Color(0xff15172B),fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$a",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$b",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$c",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$d",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$e",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Color(0xfff6db87),
                ),
                child: Text(
                  "$f",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              setState((){
                a = 0;
                b = 0;
                c = 0;
                d = 0;
                e = 0;
                f = 0;

              });
            },
            child: Card(
              elevation: 2,
              shadowColor: Color(0xffffffff9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [Color(0xffffc4a6), Color(0xfff6db87)],
                  ),
                ),
                child: Text(
                  'Reset',
                  style: TextStyle(color: Color(0xff15172B),fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
