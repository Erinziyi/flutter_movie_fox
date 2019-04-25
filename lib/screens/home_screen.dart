import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Image.asset(
          'images/moviemouselogo.png',
          height:70,
        ),

        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        leading:Icon(
          Icons.menu,
          color: Colors.white,
        ),

        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),

            onPressed: (){},
          )
        ],
      ),

      backgroundColor: Colors.black,
      body: ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildShowcaseBannerView(context),//objects are passed to WidgetBuilder
                _buildPopularListView(),
                _buildTopRatedListView(),

              ],
            ),
          ),
        ),


    );
  }

  //Started widget 1

  _buildShowcaseBannerView(BuildContext context){
    //TODO: Replace with dynamic showcase image

  }


}
