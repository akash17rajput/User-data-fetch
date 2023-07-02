import 'package:flutter/material.dart';
import 'package:user_data_fetch/welcome_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'User Data Fetch',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _name,
              decoration: const InputDecoration(
                  hintText: 'enter name',
                  border: OutlineInputBorder(),
                  labelText: 'Enter name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _email,
              decoration: const InputDecoration(
                  hintText: 'enter email',
                  border: OutlineInputBorder(),
                  labelText: 'Enter email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _phone,
              decoration: const InputDecoration(
                  hintText: 'enter phone number',
                  border: OutlineInputBorder(),
                  labelText: 'Enter phone number'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => WelcomePage(
                        name: _name.text,
                        email: _email.text,
                        phone: _phone.text)));
              },
              child: const Text(
                'Submit',
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
