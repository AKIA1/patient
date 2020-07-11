import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:self_care_patient/widget/bottomNavigator.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
  var verficiationId;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: 75,
            width: size.width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 117, 171, 1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Image.asset(
            'assets/images/baseLogo.png',
            height: 250,
            fit: BoxFit.fitHeight,
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    width: 2.5,
                    color: Colors.blue,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 35,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Phone',
                            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
                width: size.width / 1.5,
                height: 50,
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
          SizedBox(
            width: size.width / 2.5,
            height: 50,
            child: RaisedButton(
              onPressed: () async {
                final codeController = TextEditingController();
                FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: phoneController.text,
                    timeout: Duration(minutes: 23),
                    verificationCompleted:
                        (AuthCredential authCredential) async {
                      AuthResult result = await FirebaseAuth.instance
                          .signInWithCredential(authCredential);
                      FirebaseUser user = result.user;
                      print(user.uid);
                      print(user.phoneNumber);
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    verificationFailed: (exp) {
                      print(exp.message);
                    },
                    codeSent: (verfiyId, [res]) async {
                      verficiationId = verfiyId;
                      final verCode = await showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: Text('Verify Code'),
                          content: TextField(
                            controller: codeController,
                            decoration: InputDecoration(
                              labelText: 'Code',
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 1.5),
                              ),
                            ),
                          ),
                          actions: <Widget>[
                            FlatButton(
                                onPressed: () {
                                  return;
                                },
                                child: Text('Cancel')),
                            FlatButton(
                              onPressed: () {
                                return codeController.text;
                              },
                              child: Text('Verify',
                                  style: TextStyle(color: Colors.blue)),
                            )
                          ],
                        ),
                      );
                      final credential = PhoneAuthProvider.getCredential(
                          verificationId: verficiationId, smsCode: verCode);
                      AuthResult result = await FirebaseAuth.instance
                          .signInWithCredential(credential);
                      FirebaseUser user = result.user;
                      print(user.uid);
                      print(user.phoneNumber);
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    codeAutoRetrievalTimeout: (verId) {
                      verficiationId = verId;
                    });
              },
              color: Color.fromRGBO(3, 117, 171, 1),
              child: Text('Login'),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigatorWidget(),
      resizeToAvoidBottomPadding: false,
    );
  }
}
