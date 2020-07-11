import 'package:flutter/material.dart';
import 'package:self_care_patient/widget/bottomNavigator.dart';

class PatientInfo extends StatelessWidget {
  String bloodType = 'A+';

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Medical Info'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: size.width,
            padding: EdgeInsets.only(
              left: 26,
              right: 26,
              top: 12,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(25)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Text(
                    'Ahmed',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(25)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Text(
                    '50 Years',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(25)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Text(
                    '90 Kg',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: size.width,
                  height: 50,
                  child: Center(
                      child: Text(
                    'A RhD positive (A+)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(25)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      return Text('Open heart Sungry',style: TextStyle(fontWeight: FontWeight.bold),);
                    },
                    itemCount: 2,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    itemExtent: 30,
                  ),
                ),
              ],
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.of(context).pushNamed('/medicalInfo', arguments: {
                'name': 'Ahmed',
                'age': '50',
                'weight': '90',
                'bloodType': 'A+',
                'history': ['open heart Surgery']
              });
            },
            child: Text(
              'Update',
              style: TextStyle(color: Colors.white),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigatorWidget(),
      resizeToAvoidBottomPadding: false,
    );
  }
}
