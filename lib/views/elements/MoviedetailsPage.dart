import 'package:flutter/material.dart';
import 'package:movies/models/movieModel.dart';

class MovieDetailspage extends StatefulWidget {
  Movie movie;


  
  MovieDetailspage({super.key, required this.movie});

  @override
  State<MovieDetailspage> createState() => _MovieDetailspageState();
}

class _MovieDetailspageState extends State<MovieDetailspage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Comming Soon")),


    );
  }
}