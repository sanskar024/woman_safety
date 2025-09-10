import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  final String url;
  final String title;

  const WebViewScreen({super.key, required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController();

    if (!kIsWeb) {
      // Only for Android/iOS
      controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    }

    controller.loadRequest(Uri.parse(url));

    return Scaffold(
      
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.purple,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
