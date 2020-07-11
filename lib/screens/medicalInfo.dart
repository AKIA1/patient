import 'package:flutter/material.dart';
import 'package:self_care_patient/widget/bottomNavigator.dart';

class MediacalInfo extends StatefulWidget {
  @override
  _MediacalInfoState createState() => _MediacalInfoState();
}

class _MediacalInfoState extends State<MediacalInfo> {
  String bloodType = 'A+';
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController historyContoller = TextEditingController();
  int i = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final patientData = ModalRoute.of(context).settings.arguments as Map;
    if (patientData != null && i <= 0) {
      bloodType = patientData['bloodType'];
      nameController.text = patientData['name'];
      ageController.text = patientData['age'];
      weightController.text = patientData['weight'];
      historyContoller.clear();
      (patientData['history'] as List).forEach((element) {
        historyContoller.text += element + '\n';
      });
      i++;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Medical Info'),
      ),
      body: Container(
        width: double.infinity,
        height: size.height / 1.2,
        child: ListView(
          children: <Widget>[
            Container(
              width: size.width,
              padding: EdgeInsets.only(
                left: 26,
                right: 26,
                top: 38,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: size.width,
                    height: 50,
                    child: TextField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(horizontal: 32),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.blue),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: size.width,
                    height: 50,
                    child: TextField(
                      controller: ageController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Age',
                        suffixText: 'Years',
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(horizontal: 32),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.blue),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: size.width,
                    height: 50,
                    child: TextField(
                      controller: weightController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Weight',
                        suffixText: 'Kg',
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(horizontal: 32),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.blue),
                            borderRadius: BorderRadius.circular(25)),
                      ),
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
                      child: DropdownButton<String>(
                        disabledHint: Text('Blood Type'),
                        hint: Text('Blood Type'),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.indigo,
                          size: 35,
                        ),
                        value: bloodType,
                        items: [
                          DropdownMenuItem(
                            child: Text('A RhD postive (A+)'),
                            value: 'A+',
                            onTap: () {
                              setState(() {
                                bloodType = 'A+';
                              });
                            },
                          ),
                          DropdownMenuItem(
                            child: Text('A RhD negative (A-)'),
                            value: 'A-',
                            onTap: () {
                              setState(() {
                                bloodType = 'A-';
                              });
                            },
                          ),
                          DropdownMenuItem(
                            child: Text('B RhD postive (B+)'),
                            value: 'B+',
                            onTap: () {
                              setState(() {
                                bloodType = 'B+';
                              });
                            },
                          ),
                          DropdownMenuItem(
                            child: Text('B RhD negative (B-)'),
                            value: 'B-',
                            onTap: () {
                              setState(() {
                                bloodType = 'B-';
                              });
                            },
                          ),
                          DropdownMenuItem(
                            child: Text('AB RhD postive (AB+)'),
                            value: 'AB+',
                            onTap: () {
                              setState(() {
                                bloodType = 'AB+';
                              });
                            },
                          ),
                          DropdownMenuItem(
                            child: Text('AB RhD negative (AB-)'),
                            value: 'AB-',
                            onTap: () {
                              setState(() {
                                bloodType = 'AB-';
                              });
                            },
                          ),
                          DropdownMenuItem(
                            child: Text('O RhD postive (O+)'),
                            value: 'O+',
                            onTap: () {
                              setState(() {
                                bloodType = 'O+';
                              });
                            },
                          ),
                          DropdownMenuItem(
                            child: Text('O RhD negative (O-)'),
                            value: 'O-',
                            onTap: () {
                              setState(() {
                                bloodType = 'O-';
                              });
                            },
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            bloodType = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: size.width,
                    height: 200,
                    padding: EdgeInsets.all(16),
                    child: TextField(
                      controller: historyContoller,
                      keyboardType: TextInputType.text,
                      maxLines: 6,
                      decoration: InputDecoration(
                        labelText: 'Medical History',
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.blue),
                            borderRadius: BorderRadius.circular(25)),
                      ),
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
