import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
 
 void main() {
   runApp(const MyApp());
 }
 
 class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
   // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final WebViewController controller = WebViewController.fromPlatformCreationParams(
      const PlatformWebViewControllerCreationParams()
    );
    controller
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('http://fln.dcs.stechoq.com/tv/andon'));
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        //appBar: AppBar(
        //title: Text('Hello world'),
        //),
        body: WebViewWidget(controller: controller),
      ),
    );
  }
}