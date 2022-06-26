import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Noname Wright'),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: 'https://maiorem.github.io',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
