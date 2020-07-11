import 'package:flutter/material.dart';
import 'package:self_care_patient/widget/bottomNavigator.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        leading: SizedBox(),
      ),
      // floatingActionButton: ,
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        children: <Widget>[
          Expanded(child: SizedBox()),
          Center(
            child: Image.asset(
              'assets/images/sos-icon.png',
              width: size.width,
              height: size.height / 4,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Click Me when you need help',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          false
              ? Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: Colors.black54, width: 2)),
                  elevation: 20,
                  child: Container(
                    width: size.width / 1.3,
                    height: size.height / 5,
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Do you want send SMS to Ambulance?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Expanded(child: SizedBox()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              onPressed: () {},
                              color: Colors.red,
                              child: Text(
                                'YES',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              onPressed: () {},
                              color: Colors.blue,
                              child: Text(
                                'NO',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              : Expanded(child: SizedBox(),),
        ],
      ),
      bottomNavigationBar: BottomNavigatorWidget(),
      resizeToAvoidBottomPadding: false,
    );
  }
}
