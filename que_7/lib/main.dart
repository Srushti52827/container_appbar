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
          title: const Text('Horizontal Images Scrollable'),
        ),
        body: const HorizontalImageScroll(),
      ),
    );
  }
}

class HorizontalImageScroll extends StatelessWidget {
  const HorizontalImageScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          imageContainer(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqBFLqHs0XTkjEyslY6B_96t24OjN8F3p2hw&s'),
          imageContainer(
              'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202210/rohit_saraf-one_one.jpg?VersionId=yB39L0cvu3FTC11fiqxUuvGBPKEjxuwD'),
          imageContainer(
              'https://images.hindustantimes.com/img/2021/02/12/1600x900/136062939_429613574857374_6162940674773616111_n_1613141214662_1613141234825.jpg'),
          imageContainer(
              'https://images.tv9hindi.com/wp-content/uploads/2023/01/rohit-saraf-picture.jpg'),
          imageContainer(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRyGt6vbmaM2eNiU0CGAxZqzMnAWYwJrjHQ5aBZYqiro9jk7YZjP6KPdlC9oRNQZwyUVg&usqp=CAU'),
        ],
      ),
    );
  }

  Widget imageContainer(String imageUrl) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 150,
      height: 300,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
