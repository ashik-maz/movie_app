import 'package:flutter/material.dart';
import 'package:movies/views/elements/MovieGridView.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SearchBar(
                
                backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xFF6D6B6B)), 
                hintText: "SEARCH",
                leading: Icon(Icons.search),
                overlayColor: MaterialStateColor.resolveWith((states) => Color(0xFFF3C2D2)),    
              ),
            ),
            MovieGridView(),
          ],
        ),
      ),
    );
  }
}
