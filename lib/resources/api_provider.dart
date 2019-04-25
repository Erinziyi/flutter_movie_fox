import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' show Client;

class ApiProvider{
  Client client = Client();
  static const apiKey = '47381b366c6e3fa47a9382208cd2c111';
  static const baseUrl = 'https://api.themoviedb.org/3/movie';

  Future<MovieList>getMovies(String type)async{
    final response = await client.get('$baseUrl/$type?api_key=$apiKey');
    // Ok status
    if(response.statusCode == HttpStatus.ok){
      print(response.request.url.toString());
      return MovieList(json.decode(response.body));

    } else {
      //Message fail to load
      throw Exception('Failed to load movies');
    }
  }

  Future<Movie>getMovie(String type)async{
    final response = await client.get('$baseUrl/$type?api_key=$apiKey');
    // Ok status
    if(response.statusCode == HttpStatus.ok){
      print(response.request.url.toString());
      return Movie(json.decode(response.body));

    } else {
      //Message fail to load
      throw Exception('Failed to load movie');
    }
  }

}