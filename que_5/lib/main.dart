import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  get width => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('images from network'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR165R-zpeVql_v2zdsLwPQia2GiKe7ci9xdw&s',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://miro.medium.com/v2/resize:fit:658/1*rmDV6bT1kTtiT_H6BA4GAw.jpeg',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSotj59qp9fwAEA7_HKI49hiT14lhDmhFraYdSFse7S8y6I92HXPpqld8ALAfbmr4FsA_o&usqp=CAU',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
