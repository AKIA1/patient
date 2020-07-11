import 'package:flutter/material.dart';
import 'package:self_care_patient/widget/bottomNavigator.dart';

class MyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                'Contact 1:',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: ListTile(
                title: Text(
                  'Mohamed Ali',
                  style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '01111111112',
                  style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.edit,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                'Contact 2:',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: ListTile(
                title: Text(
                  'Mohamed Ali',
                  style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '01111111112',
                  style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.edit,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                'Contact 3:',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: ListTile(
                title: Text(
                  'Mohamed Ali',
                  style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '01111111112',
                  style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.edit,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigatorWidget(),
    );
  }
}
