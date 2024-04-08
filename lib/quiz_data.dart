// quiz_data.dart

//data gambar
final List<String> questionImages = [
  'images/1.jpeg',
  'images/2.jpeg',
  'images/3.jpeg',
  'images/4.jpeg',
  'images/5.jpeg',
  'images/6.jpeg',
  'images/7.jpeg',
  'images/8.jpeg',
  'images/9.jpeg',
  'images/10.jpeg',
];


// Data kuis yang terdiri dari daftar pertanyaan beserta jawaban-jawabannya.
final List<Map<String, Object>> questions = const [
  {
    'questionText': 'Siapakah pelukis terkenal asal Italia?',
    'answers': [
      'Vincent van Gogh',
      'Leonardo da Vinci',
      'Pablo Picasso',
      'Michelangelo'
    ],
  },
  {
    'questionText': 'Dimanakah Patung Liberty berada?',
    'answers': [
      'New York City, Amerika Serikat',
      'Paris, Prancis',
      'London, Inggris',
      'Tokyo, Jepang'
    ],
  },
  {
    'questionText': 'Apa alat musik tradisional Jepang yang terkenal?',
    'answers': [
      'Sitar', 
      'Gamelan', 
      'Bagpipe',
      'Shamisen'
      ],
  },
  {
    'questionText': 'Siapakah penulis drama terkenal dari Inggris?',
    'answers': [
      'Anton Chekhov',
      'William Shakespeare',
      'Henrik Ibsen',
      'Arthur Miller'
    ],
  },
  {
    'questionText': 'Dimanakah Great Barrier Reef terletak?',
    'answers': [
      'Afrika', 
      'Amerika Selatan', 
      'Australia',
      'Asia'
      ],
  },
  {
    'questionText': 'Siapakah presiden pertama Amerika Serikat?',
    'answers': [
      'Thomas Jefferson',
      'Abraham Lincoln',
      'John Adams',
      'George Washington'
    ],
  },
  {
    'questionText': 'Siapakah sutradara film terkenal yang lahir di India?',
    'answers': [
      'Satyajit Ray',
      'Martin Scorsese',
      'Steven Spielberg',
      'Alfred Hitchcock'
    ],
  },
  {
    'questionText': 'Dimanakah Taj Mahal terletak?',
    'answers': [
      'Mesir', 
      'China',
      'India',
      'Rusia'
      ],
  },
  {
    'questionText': 'Apa nama gunung tertinggi di dunia?',
    'answers': [
      'Gunung Kilimanjaro',
      'Gunung Everest',
      'Gunung Fuji',
      'Gunung McKinley'
    ],
  },
  {
    'questionText': 'Siapakah penulis novel "One Hundred Years of Solitude"?',
    'answers': [
      'Gabriel García Márquez',
      'Leo Tolstoy',
      'Jane Austen',
      'Fyodor Dostoevsky'
    ],
  },
];

// Jawaban yang benar untuk setiap pertanyaan, sesuai dengan indeks pertanyaan dalam daftar pertanyaan.
final List<String> correctAnswers = [
  'Leonardo da Vinci',
  'New York City, Amerika Serikat',
  'Shamisen',
  'William Shakespeare',
  'Australia',
  'George Washington',
  'Satyajit Ray',
  'India',
  'Gunung Everest',
  'Gabriel García Márquez',
];


