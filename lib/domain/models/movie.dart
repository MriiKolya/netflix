// ignore_for_file: non_constant_identifier_names

class Movie {
  String backdrop_path;
  int id;
  String original_language;
  String title;
  String overview;
  double popularity;
  double vote_average;
  double release_date;
  String poster_path;
  String vote_count;

  Movie(
      {required this.id,
      required this.original_language,
      required this.title,
      required this.overview,
      required this.popularity,
      required this.vote_average,
      required this.release_date,
      required this.poster_path,
      required this.vote_count,
      required this.backdrop_path});

  // Movie.fromJson(Map<String, dynamic> json){ return Movie(
  //     id: json['backdrop_path'],
  //     original_language: json['original_language'],
  //     title: json[''],
  //     overview: json[''],
  //     popularity: json[''],,
  //     vote_average: json[''],,
  //     release_date: json[''],,
  //     poster_path: json[''],,
  //     vote_count: json[''],,
  //     backdrop_path: json[''],);
  // }
}
