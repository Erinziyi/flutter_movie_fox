import 'package:flutter/material.dart';
import 'package:flutter_movie_hub/color/color.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
      ),
      home: MyHomePage(title: 'Movie Hub'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        textTheme: TextTheme(
        title: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
    )
      ),

      )


    );
  }
}
