import 'package:flutter/material.dart';
import 'package:movies/controller/YtsMovieController.dart';
import 'package:movies/models/movieModel.dart';
import 'package:movies/views/elements/MoviedetailsPage.dart';

class MovieGridView extends StatefulWidget {
  MovieGridView({super.key});

  @override
  State<MovieGridView> createState() => _MovieGridViewState();
}

class _MovieGridViewState extends State<MovieGridView> {
  YtsMovieController ytsMovieController = YtsMovieController();

  @override
  Widget build(BuildContext context) {
    Future ytsMovielist = ytsMovieController.getMovieList();
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.70,
      child: Container(
          padding: EdgeInsets.all(8),
          child: FutureBuilder(
              future: ytsMovielist,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Movie> movies =snapshot.data;
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 0, mainAxisSpacing: 8,  
                          ),
                         
                        
                      itemCount:movies.length,
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          child: GestureDetector(
                            onTap:(){
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context){
                                  return MovieDetailspage(movie: movies[index]);
                                }
                                )
                              ) ;
                            },
                            child: Column(
                              children: [
                                Image.network(movies[index].mediumCoverImage,height: MediaQuery.of(context).size.height*0.1),
                                Text(movies[index].title,textAlign:TextAlign.center),
                            
                                // Image.network(movies[index].[mediumCoverImage],height: MediaQuery.of(context).size.height*0.1,),
                                // Text(movies[index].['title'],textAlign:TextAlign.center,),
                              ],
                            ),
                          ),
                        );
                      });
                }
                else {
                  return Center(child: CircularProgressIndicator(),);
                }
              })),
    );
  }
}
