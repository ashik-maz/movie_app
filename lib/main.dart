import 'package:flutter/material.dart';
import 'package:movies/views/HomePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'World Archive',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff23272e),
        ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Image.asset(
              "images/logo1.png",
              fit: BoxFit.cover,
              height: 50,
              filterQuality: FilterQuality.high,
            ),
          ),
          body: Center(child: HomePage()),
        ));
  }
}
