import 'package:flutter/material.dart';
import 'package:flutter_hw/networking/networking.dart';

class JokeDialog extends AlertDialog{
  const JokeDialog(this.category, {Key? key}) : super(key: key);
  final String category;

  @override
  AlertDialog build(BuildContext context){
    return AlertDialog(
      title: Text('${category[0].toUpperCase()}${category.substring(1)} joke'),
      content: JokeText(category),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            showDialog(
              context: context,
              builder: (BuildContext context) => JokeDialog(category),
            );
          },
          child: const Text('Next'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Lol'),
        ),
      ],
    );
  }
}


class JokeText extends StatelessWidget{
  const JokeText(this.category, {Key? key}) : super(key: key);
  final String category;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, Object?>>(
      future: fetchJoke(category),
      builder: (context, snapshot) {
        final data = snapshot.data;
        if (data == null) {
          return const Text('Wait for it...');
        } else {
          return Text(data['value'].toString());
        }
      },
    );
  }
}
