import 'package:flutter/material.dart';
import 'package:self_care_patient/widget/bottomNavigator.dart';

class AddingContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contacts'),
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: double.infinity,
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Contact 1 :',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.blue),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4, left: 8),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              labelText: 'Name',
                              hintText: 'Type the name of the Contact',
                              contentPadding: EdgeInsets.only(left: 18)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              labelText: 'Phone',
                              hintText: 'Type the Phone of the Contact',
                              contentPadding: EdgeInsets.only(left: 18)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Contact 2 :',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.blue),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4, left: 8),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              labelText: 'Name',
                              hintText: 'Type the name of the Contact',
                              contentPadding: EdgeInsets.only(left: 18)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              labelText: 'Phone',
                              hintText: 'Type the Phone of the Contact',
                              contentPadding: EdgeInsets.only(left: 18)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Contact 3 :',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.blue),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4, left: 8),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              labelText: 'Name',
                              hintText: 'Type the name of the Contact',
                              contentPadding: EdgeInsets.only(left: 18)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              labelText: 'Phone',
                              hintText: 'Type the Phone of the Contact',
                              contentPadding: EdgeInsets.only(left: 18)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigatorWidget(),
    );
  }
}
