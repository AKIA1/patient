import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:self_care_patient/screens/addingContact.dart';
import 'package:self_care_patient/screens/addingReminder.dart';
import 'package:self_care_patient/screens/homeScreen.dart';
import 'package:self_care_patient/screens/loginScreen.dart';
import 'package:self_care_patient/screens/medicalInfo.dart';
import 'package:self_care_patient/screens/myContacts.dart';
import 'package:self_care_patient/screens/myReminder.dart';
import 'package:self_care_patient/screens/patientInfo.dart';
import 'package:self_care_patient/screens/splashScreeen.dart';


main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/splahScreen':(_)=>SplashScreen(),
        '/login': (_)=>LoginScreen(),
        '/myContact':(_)=>MyContacts(),
        '/myReminder':(_)=>MyReminders(),
        '/medicalInfo':(_)=>MediacalInfo(),
        '/home':(_)=>HomeScreen(),
        '/addReminder':(_)=>AddingReminder(),
        '/addContact':(_)=>AddingContact(),
        '/patientInfo':(_)=>PatientInfo(),
        
      },
    );
  }
}
