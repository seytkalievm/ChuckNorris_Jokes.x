import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String _aboutApp =
    '''Simple flutter application that displays Chuck Norris Jokes on a given topic.\n''';
const String _author =
    '''Seytkaliev Makshe, 3rd year bachelor student at Innopolis University.\n''';
const String _telegramLink = 'https://t.me/seytkalievm';
const String _githubLink = 'https://github.com/seytkalievm';

class AboutInfo extends StatelessWidget {
  const AboutInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: _aboutApp,
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 14,
            ),
          ),
          const TextSpan(
            text: '\nAuthor:\n',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: _author,
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 14,
            ),
          ),
          TextSpan(
              text: 'Telegram\n',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 18,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(_telegramLink);
                }),
          TextSpan(
            text: 'Github',
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(_githubLink);
              },
          ),
        ],
      ),
    );
  }
}
