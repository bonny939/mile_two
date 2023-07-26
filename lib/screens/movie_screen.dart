// Importing required packages.
import 'package:flutter/material.dart';

// Importing the 'Movie' class from the '../models/movie.dart' file.
import '../models/movie.dart';

// Creating a new class 'MovieScreen' that extends 'StatelessWidget'.
class MovieScreen extends StatelessWidget {
  // Initializing a list of 'Movie' objects named 'favoriteMovies'.
  final List<Movie> favoriteMovies = [
    // Adding 'Movie' objects to the 'favoriteMovies' list.
    // Bonny -> index 0
    Movie(
      director: "Christopher Nolan",
      releaseYear: 2023,
      title: "Oppenheimer",
      posterUrl:
          "https://movies.universalpictures.com/media/opr-tsr1sheet3-look2-rgb-3-1-1-64545c0d15f1e-1.jpg",
    ),
    // Kikky -> index 1
    Movie(
      director: "Eric Kripke",
      releaseYear: 2019,
      title: 'The Boys',
      posterUrl:
          "https://image.tmdb.org/t/p/original/dzOxNbbz1liFzHU1IPvdgUR647b.jpg",
    ),
    // Wisdom -> index 2
    Movie(
      director: "Zack Snyder",
      releaseYear: 2013,
      title: "Man of Steel",
      posterUrl:
          "http://2.bp.blogspot.com/-V4wozefHUw4/UYQSw_Nhc4I/AAAAAAAAAL8/eY5-aDts1eI/s1600/man-of-steel-+new+flying+poster.jpg",
    ),
    // Braison
    Movie(
      director: 'Quentin Tarantino',
      title: 'Kill BIll Vol.1',
      releaseYear: 2003,
      posterUrl:
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT2n6mrijVjYMAFEQ1DUaKCp0P02YwVyzAO9Hf1ypNEPvsJk835',
    ),
    // Davy
    Movie(
      director: "Josh Boone",
      releaseYear: 2014,
      title: "The Fault in Our Stars",
      posterUrl:
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR6N8kOvrQrjIEBjIFjcP4qXTSSETEoR1J2CeFl5gtlcufQ9PKP",
    ),
    // Breanna
    Movie(
      director: "Tim Johnson",
      releaseYear: 2015,
      title: "Home",
      posterUrl:
          "https://i.pinimg.com/564x/1e/7d/98/1e7d98580e02d2c1f3eb5a609ede7efb.jpg",
    ),
    // Andrew
    Movie(
      director: "Guy Ritchie",
      releaseYear: 2023,
      title: "Operation Fortune",
      posterUrl: "https://i.ytimg.com/vi/W8Sqk1GcqxY/maxresdefault.jpg",
    ),
    // Thomas
    Movie(
      director: 'David Fincher',
      releaseYear: 1999,
      title: 'fight clu',
      posterUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw3__ptLTHyk_K5QoGfL7OCzXU05LncsZM1A&usqp=CAU',
    ),
    // Gabriel
    Movie(
      director: 'Steven Caple Jr.',
      releaseYear: 2023,
      title: 'Transformers: Rise of the Beasts',
      posterUrl:
          'https://www.themoviedb.org/t/p/w300_and_h450_bestv2_filter(blur)/gPbM0MK8CP8A174rmUwGsADNYKD.jpg',
    ),
    // Ron
    Movie(
      director: 'robert  zemeckis',
      releaseYear: 1985,
      title: 'Back to the future',
      posterUrl:
          'https//www.movieposters.com/cdn/shop/products/0b2b67a1de6a06d1ce65e4ccc64047e3_a9f7318e-c5c4-4d2a-aed2-890bbfad883c_480x.progressive.jpg?v=1573590273:',
    ),
    // Billy
    Movie(
      director: 'Brad Peyton',
      releaseYear: 2012,
      title: 'Journey 2: The Mysterious Island',
      posterUrl:
          'https://theculturevulture.co.uk/wp-content/uploads/2012/02/Journey-2-poster-500x284.jpg',
    ),
    // Dalvin
    Movie(
      director: 'Rob Cohen',
      releaseYear: 2018,
      title: 'hurricane heist',
      posterUrl:
          'https://m.imdb.com/title/tt5360952/mediaviewer/rm3066974464/?ref_=tt_ov_i',
    ),
  ];

  // Method to show movie details in an AlertDialog.
  void showMovieDetails(BuildContext context, Movie movie) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(movie.title),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                movie.posterUrl,
                height: 300,
                width: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Director: ${movie.director}"),
              SizedBox(
                height: 10,
              ),
              Text("Release Year: ${movie.releaseYear}"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Building the main UI using the Scaffold widget.
    return Scaffold(
      // Defining the AppBar with a centered title.
      appBar: AppBar(
        title: Center(child: Text("My Favorite Movies")),
        shadowColor: Colors.deepPurple, // Adding a shadow color to the AppBar.
      ),
      // Defining the body of the Scaffold with a ListView builder.
      body: ListView.builder(
        // Setting the number of items in the ListView to the length of 'favoriteMovies' list.
        itemCount: favoriteMovies.length,
        // Building each item in the ListView using the 'Card' widget.
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                tileColor: Color.fromARGB(255, 135, 143, 143), // Setting the tile background color.
                leading: Image.network(                favoriteMovies[index].posterUrl,
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
              title: Text(
                favoriteMovies[index].title,
                selectionColor: Colors.blue, // Setting the text selection color.
              ),
              onTap: () {
                // When the ListTile is tapped, show the movie details in an AlertDialog.
                showMovieDetails(context, favoriteMovies[index]);
              },
              trailing: RotationTransition(
                turns: AlwaysStoppedAnimation(0.25), // Adding a rotation animation to the trailing Icon.
                child: Icon(Icons.arrow_drop_down),
              ),
            ),
            ),
          );
        },
      ),
    );
  }
}

