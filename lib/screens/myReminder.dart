import 'package:flutter/material.dart';
import 'package:self_care_patient/widget/bottomNavigator.dart';

class MyReminders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Reminders'), centerTitle: true),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: Image.asset('assets/images/syringe.png'),
                        title: Text('Panadol'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[Text('2 Pills'), Text('10:00 PM')],
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.edit),
                          ],
                        ),
                      )
                    ],
                  );
                },
                itemCount: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: IconButton(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                  size: 60,
                ),
                onPressed: (){
                  Navigator.of(context).pushNamed('/addReminder');
                },
              ),
            )
          ],
        ),
        padding: EdgeInsets.symmetric(vertical: 12),
      ),
      bottomNavigationBar: BottomNavigatorWidget(),
    );
  }
}
