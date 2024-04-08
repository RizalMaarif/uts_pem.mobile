import 'package:flutter/material.dart';
import 'quiz_data.dart'; // Mengimpor data kuis dari file quiz_data.dart.

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

// Abstraction: Kelas ini mengabstraksikan tampilan dan logika untuk menjalankan kuis.
class _QuizScreenState extends State<QuizScreen> {
  // Encapsulation: Variabel yang hanya dapat diakses di dalam kelas _QuizScreenState.
  int _questionIndex = 0; // Indeks pertanyaan saat ini.
  int _score = 0; // Skor pengguna.
  bool _answered =
      false; // Menyimpan status apakah pengguna telah menjawab pertanyaan atau belum.

  // Encapsulation: Logika untuk menjawab pertanyaan diisolasi dalam metode _answerQuestion.
  // Metode untuk menangani jawaban pengguna.
  void _answerQuestion(String answer) {
    setState(() {
      _answered =
          true; // Mengubah status menjadi true ketika pengguna menjawab.
      if (_questionIndex < questions.length - 1) {
        // Jika bukan pertanyaan terakhir.
        if (correctAnswers[_questionIndex] == answer) {
          _score += 10; // Menambah skor jika jawaban benar.
        }
      } else {
        // Jika pertanyaan terakhir.
        if (correctAnswers[_questionIndex] == answer) {
          _score += 10; // Menambah skor jika jawaban benar.
        }
        _showResultDialog(); // Memunculkan dialog hasil kuis.
      }
    });
  }

  // Metode untuk menampilkan dialog hasil kuis.
  void _showResultDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Quizz Selesai'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Skor Anda: $_score / 100',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(height: 20),
              Text(
                'Jawaban yang benar adalah: ${correctAnswers.join(", ")}',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _questionIndex = 0;
                  _score = 0;
                  _answered =
                      false; // Setelah menutup dialog, reset status jawaban.
                });
              },
              child: Text('Kembali', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  // Metode untuk melanjutkan ke pertanyaan berikutnya.
  void _nextQuestion() {
    setState(() {
      _questionIndex++; // Meningkatkan indeks pertanyaan.
      _answered =
          false; // Reset status jawaban saat pindah ke pertanyaan berikutnya.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 233, 208, 24), // Warna latar belakang.
      appBar: AppBar(
        title: Text('Quiz App Kelompok 4'), // Judul aplikasi.
        backgroundColor:
            const Color.fromARGB(255, 210, 148, 55), // Warna AppBar.
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // images
          Image.asset(
            questionImages[_questionIndex],
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          // Teks pertanyaan.
          Text(
            questions[_questionIndex]['questionText'] as String,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 21, color: const Color.fromARGB(255, 0, 0, 0)),
          ),
          // Tombol-tombol jawaban.
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: ElevatedButton(
                onPressed: _answered
                    ? null
                    : () => _answerQuestion(
                        answer), // Memastikan tombol hanya bisa ditekan sekali untuk setiap pertanyaan.
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(answer), // Teks jawaban.
                    if (_answered && correctAnswers[_questionIndex] == answer)
                      Icon(Icons.check,
                          color: Color.fromARGB(255, 2, 103,5)), // Polimorfisme: Tampilkan ikon centang jika jawaban benar.
                    if (_answered && correctAnswers[_questionIndex] != answer)
                      Icon(Icons.close,
                          color: const Color.fromARGB(255, 215, 24,11)), //Polimorfisme: Tampilkan ikon silang jika jawaban salah.
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary:
                      const Color.fromARGB(255, 52, 164, 153), // Warna tombol.
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold), // Gaya teks tombol.
                ),
              ),
            );
          }).toList(),
          SizedBox(height: 20), // Spasi antara tombol jawaban dan tombol Next.
          // Tombol Next untuk melanjutkan ke pertanyaan berikutnya.
          ElevatedButton(
            onPressed: _answered
                ? _nextQuestion
                : null, // Polymorphism: Tombol Next hanya aktif jika pengguna telah menjawab.
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}
