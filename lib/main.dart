import 'package:flutter/material.dart';
import 'package:flutter_movie_hub/color/color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_movie_hub/screens/home_screen.dart';

final List<String> imgList = [
      'https://api.themoviedb.org/3/movie/{movie_id}/images?api_key=<<api_key>>&language=en-US'

];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Hub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryBlack,
        fontFamily: 'Raleway',
        // TODO: Experiment with CupertinoTransition for Android
        // https://stackoverflow.com/questions/50196913/how-to-change-navigation-animation-using-flutter
        // Add the line below to get horizontal sliding transitions for routes.
        pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        },
      ),

      ),


      home: HomeScreen(),

    );
  }
}


