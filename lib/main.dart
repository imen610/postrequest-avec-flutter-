import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

// url of the video : https://www.youtube.com/watch?v=ljTkGz_O36I

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final url = "https://jsonplaceholder.typicode.com/posts";
  void postData() async {
    try {
      final response = await post(Uri.parse(url),
          body: {"title": "imen", "body": "Post body", "userId": "1"});
      if (kDebugMode) {
        print(response.body);
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: postData, child: const Text("Send Post")),
        ),
      ),
    );
  }
}
