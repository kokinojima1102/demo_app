import 'package:flutter/material.dart';

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoHomePage(),
    );
  }
}

class DemoHomePage extends StatefulWidget {
  @override
  _DemoHomePageState createState() => _DemoHomePageState();
}

class _DemoHomePageState extends State<DemoHomePage> {
  final TextEditingController _controller = TextEditingController();
  String _response = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'テキストを入力',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getResponse,
              child: Text('送信'),
            ),
            SizedBox(height: 20),
            Text(
              '返答: $_response',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _getResponse() {
    setState(() {
      final inputText = _controller.text;

      if (inputText == "こんにちは") {
        _response = "こんにちは！";
      } else if (inputText == "さようなら") {
        _response = "さようなら！";
      } else {
        _response = "未知の入力";
      }
    });
  }
}