import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hw/about/about.dart';
import 'package:flutter_hw/joke%20widgets/categories.dart';

void main() {
  runApp(
    const MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Chuck Norris Jokes'),
          actions: [
            IconButton(
              onPressed: () => showAboutDialog(
                context: context,
                applicationName: 'Chuck Norris Jokes',
                applicationVersion: '1.0.0',
                children: [
                  const AboutInfo(),
                ],
              ),
              icon: const Icon(CupertinoIcons.exclamationmark_circle),
            ),
          ],
        ),
        body: const Center(
          child: Categories(),
        ),
      ),
    );
  }
}
