// main.dart
import 'package:flutter/material.dart';
import 'quiz_screen.dart';

void main() {
  runApp(
      QuizApp()); // Menjalankan aplikasi Flutter dengan memanggil runApp() dan melewatkan instance QuizApp sebagai root widget.
}

class QuizApp extends StatelessWidget {
  // Membuat class QuizApp yang merupakan turunan dari StatelessWidget.
  @override
  Widget build(BuildContext context) {
    // Override method build yang akan mereturn widget yang akan digunakan sebagai root widget.
    return MaterialApp(
      // Mengembalikan MaterialApp sebagai root widget.
      home: QuizScreen(), // Mengatur halaman home menjadi QuizScreen.
    );
  }
}
