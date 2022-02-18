import 'package:flutter/material.dart';

void showAboutSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context){
      return const AboutSheet();
    },
  );
}


class AboutSheet extends StatelessWidget{

  const AboutSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Lol kek cheburek'),
      ),
    );
  }



}