import 'package:flutter/material.dart';

class BottomNavigatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 65,
      width: size.width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(56, 189, 245, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
          topRight: Radius.circular(100),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            
            IconButton(
              icon: Icon(
                Icons.phone,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/myContact');
              },
            ),
            InkWell(
              child: Image.asset(
                'assets/images/sos-icon.png',
                width: 65,
                height: 65,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/patientInfo');
              },
              child: Image.asset(
                'assets/images/treatment.png',
                height: 40,
                width: 40,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/myReminder');
              },
              child: Image.asset(
                'assets/images/reminder.png',
                height: 50,
                width: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
