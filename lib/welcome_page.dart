import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String name, email, phone;
  WelcomePage({required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Data Fetch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Name : ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('${name}')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Email : ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('${email}')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Phone Number : ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('${phone}')
              ],
            )
          ],
        ),
      ),
    );
  }
}
