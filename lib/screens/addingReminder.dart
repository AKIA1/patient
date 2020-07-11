import 'package:flutter/material.dart';
import 'package:self_care_patient/widget/bottomNavigator.dart';

class AddingReminder extends StatefulWidget {
  @override
  _AddingReminderState createState() => _AddingReminderState();
}

class _AddingReminderState extends State<AddingReminder> {
  var medicineType;

  String medicineTime = '10:00 AM';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(title: Text('Medical Reminder'), centerTitle: true),
      bottomNavigationBar: BottomNavigatorWidget(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Medicine Name',
                  hintText: 'Type the name of the Medicine'),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 1.5),
                borderRadius: BorderRadius.circular(25),
              ),
              width: double.infinity,
              height: 50,
              child: Center(
                child: DropdownButton<String>(
                  disabledHint: Text('Medicine Type'),
                  hint: Text('Medicine Type'),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.indigo,
                    size: 35,
                  ),
                  value: medicineType,
                  items: [
                    DropdownMenuItem(
                      child: Text('Pills'),
                      value: 'pill',
                      onTap: () {
                        setState(() {
                          medicineType = 'pill';
                        });
                      },
                    ),
                    DropdownMenuItem(
                      child: Text('Liquids'),
                      value: 'liquid',
                      onTap: () {
                        setState(() {
                          medicineType = 'liquid';
                        });
                      },
                    ),
                    DropdownMenuItem(
                      child: Text('Injections'),
                      value: 'injection',
                      onTap: () {
                        setState(() {
                          medicineType = 'injection';
                        });
                      },
                    ),
                    DropdownMenuItem(
                      child: Text('Drops'),
                      value: 'drop',
                      onTap: () {
                        setState(() {
                          medicineType = 'B-';
                        });
                      },
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      medicineType = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(width: 1.5, color: Colors.blue),
                  ),
                  labelText: 'Amount',
                  hintText: 'Type the amount of medicine'),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () async {
                final currentTime = TimeOfDay.now();
                final time = await showTimePicker(
                    context: context, initialTime: currentTime);
                setState(() {
                  medicineTime = time.format(context).toString();
                });
              },
              child: Text(
                medicineTime,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.blue,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
            )
          ],
        ),
      ),
    );
  }
}
