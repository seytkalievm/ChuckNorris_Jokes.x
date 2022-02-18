import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hw/about.dart';
import 'package:flutter_hw/category.dart';


void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false
    )
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
                    onPressed: (){
                      showAboutSheet(context);
                    },
                    icon: const Icon(CupertinoIcons.exclamationmark_circle))
                ],
            ),
            body: const Center(
                child: Categories(),
            ),
          )
    );
  }
}

