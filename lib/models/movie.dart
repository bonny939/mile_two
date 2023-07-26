// Defining a class 'Movie' to represent information about a movie.
class Movie {
  // Properties of the 'Movie' class.
  final String director;       // Stores the name of the movie's director.
  final int releaseYear;       // Stores the release year of the movie.
  final String title;          // Stores the title of the movie.
  String posterUrl;            // Stores the URL of the movie's poster.

  // Constructor for the 'Movie' class.
  // When creating a new 'Movie' object, this constructor must be used and all required properties must be provided.
  Movie({
    required this.director,    // The 'director' parameter is required and must be provided when creating a new 'Movie' object.
    required this.releaseYear, // The 'releaseYear' parameter is required and must be provided when creating a new 'Movie' object.
    required this.title,       // The 'title' parameter is required and must be provided when creating a new 'Movie' object.
    required this.posterUrl,   // The 'posterUrl' parameter is required and must be provided when creating a new 'Movie' object.
  });
}
