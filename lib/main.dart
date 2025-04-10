import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';  // Import the WebView package
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter WebView Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    // Initialize WebView plugin
    // WebView.platform = SurfaceAndroidWebView();  // For Android-specific initialization
    // If you're targeting Linux or iOS, this line might be unnecessary
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: WebView(
        initialUrl: 'https://app.mmkuwait.in/',  // Your URL
        javascriptMode: JavascriptMode.unrestricted,  // Enable JavaScript for the WebView
        onWebViewCreated: (WebViewController webViewController) {
          _webViewController = webViewController;  // Store WebViewController
        },
      ),
    );
  }
}
