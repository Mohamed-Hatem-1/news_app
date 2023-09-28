import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class Home extends StatelessWidget {

  final Uri _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clickable Container Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchUrl,
          child: Text('Show Flutter homepage'),
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    launchUrl(_url);
  }

}

