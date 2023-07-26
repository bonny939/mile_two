// Importing required packages.
import 'package:flutter/material.dart';

// Importing the 'MovieScreen' class from the 'movie_screen.dart' file.
import 'package:mile_two/screens/movie_screen.dart';

// The starting point of our application.
void main() {
  // Running the 'MyApp' widget inside the Flutter application.
  runApp(const MyApp());
}

// Defining the main application widget 'MyApp' as a 'StatelessWidget'.
class MyApp extends StatelessWidget {
  // Constructor for the 'MyApp' widget.
  const MyApp({super.key});

  // The 'build' method to build the user interface of the application.
  @override
  Widget build(BuildContext context) {
    // Returning the MaterialApp widget, which provides the basic structure for the app.
    return MaterialApp(
      // Setting the title of the application, which will be displayed in the app switcher.
      title: 'Our Movie Application',
      
      // Setting the theme data to customize the visual appearance of the app.
      theme: ThemeData(
        // Defining the primary color of the app using ARGB values (Alpha, Red, Green, Blue).
        primaryColor: Color.fromARGB(255, 125, 5, 146),
      ),
      
      // Setting the home screen of the app to be the 'MovieScreen' widget.
      // This is the initial screen that will be displayed when the app starts.
      home: MovieScreen(),
    );
  }
}
