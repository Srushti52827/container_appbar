import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 234, 201, 104),
          title: const Text(
            "Shah rukh khan",
            style: TextStyle(fontSize: 20),
            selectionColor: Colors.black,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: Text('Bade bade deshon mein aaisi choti choti baatein to hoti rehti hain'),
        ),
      ),
    );
  }
}
