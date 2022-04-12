import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie"),
      ),
      body: ListView(
        children: [
          // Load from assets
          Lottie.asset("assets/bitcoin_to_the_moon.json"),
          // Load a Lottie file from a remote url
          Lottie.network(
            // 'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/lottiefiles/bitcoin_to_the_moon.json',
            'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/lottiefiles/coinfall.json',
          ),
          // Load an animation and its images from a zip file
          //Lottie.asset('assets/bitcoin_to_the_moon.zip'),
        ],
      ),
    );
  }
}

