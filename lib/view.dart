import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'home.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  WebViewController controller = WebViewController()
    ..loadRequest(Uri.parse('https://info.pastionline.my.id/'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () async {
              if (await controller.canGoBack()) {
                await controller.goBack();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("No back history item"),
                  ),
                );
                return;
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () async {
              if (await controller.canGoForward()) {
                await controller.goForward();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("No forward history item"),
                  ),
                );
                return;
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.replay),
            onPressed: () {
              controller.reload();
            },
          ),
        ],
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
