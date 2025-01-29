import 'package:helloworld/helloworld.dart' as helloworld;
import 'dart:io'; //library memasukan input

void main(List<String> arguments) {
  print('Hello world: ${helloworld.calculate()}!');

  //ini single comment line
  /* ini
  multi line comment */
  //gunakan /// atau /** */ untuk membuat dokumentasi comment
  /// [main] untuk menulis kode

//variabel
  var nama = 'bio'; //var string
  var umur = 18; //var int
  print(nama); //print nama
  print(umur); // print umur

  String univ; //var kosong
  univ = 'Universitas Brawijaya'; //memasukan nilai ke var
  print(univ); //print univ

  var x; //var x dynamic
  x = 10; //nilai pertama
  x = 'sepuluh'; //diubah menjadi string
  print(x); //print x

  stdout.write(
      'Nama Anda : '); // Menampilkan prompt "Nama Anda :" ke konsol tanpa menambahkan baris baru
  String name = stdin
      .readLineSync()!; // Membaca input nama dari pengguna dan menyimpannya dalam variabel 'name'
  stdout.write('Usia Anda : '); // Menampilkan prompt "Usia Anda :" ke konsol
  int age = int.parse(stdin
      .readLineSync()!); // Membaca input usia dari pengguna, mengonversinya menjadi integer, dan menyimpannya dalam variabel 'age'
  print(
      'Halo $name, usia Anda $age tahun'); // Menampilkan pesan sapaan yang menyertakan nama dan usia pengguna

  // String -> int
  var eleven = int.parse('11');
  print(eleven.runtimeType);

  // String -> double
  var elevenPointTwo = double.parse('11.2');
  print(elevenPointTwo.runtimeType);

  // int -> String
  var elevenAsString = 11.toString();
  print(elevenAsString.runtimeType);

  // double -> String
  var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'
  print(piAsString.runtimeType);

  //penggunaan \ untuk menandakan petik hanyalah tanda baca bukan pembatas string
  print('"I think it\'s great!" I answered confidently');

  //String interpolation di mana kita bisa memasukkan nilai dari variabel atau expression ke dalam string. Interpolation ini bisa kita terapkan dengan simbol $.
  var bola = 'Messi';
  print('Hello $bola, nice to meet you.');
  print('1 + 1 = ${1 + 1}');

  //Huruf ‘r’ sebelum String akan memberitahu Dart untuk menganggap String sebagai raw, yang berarti akan mengabaikan interpolation.
  print(r'Dia baru saja membeli komputer seharga $1,000.00');

  // kita juga bisa menambahkan sebuah Unicode ke dalam String. Pada Dart Unicode ini dikenal dengan runes.
  print('Hi \u2665');

  //boolean
  bool example = false;
  if (example == true) {
    print("It's true");
  } else {
    print("It's False");
  }

  //operator aritmatika
  print(5 + 2); // int add = 7
  print(5 - 2); // int subtract = 3
  print(5 * 2); // int multiply = 10
  print(5 / 2); // double divide = 2.5
  print(5 ~/ 2); // int intDivide = 2
  print(5 % 2); // int modulo = 1

  //increament & decreament
  var a = 0, b = 5;
  var c = 1 + 1;
  var d = 0;
  var e = 2;
  a++;
  b--;
  d += 5;
  e *= 3;
  print(a); // output = 1
  print(b); // output = 4
  print(c); // output = 2
  print(d); // output = 5
  print(e); // output = 6

  //operator perbandingan
  if (2 <= 3) {
    print('Ya, 2 kurang dari sama dengan 3');
  } else {
    print("Anda salah");
  }

  //operator logika
  if (2 < 3 && 2 + 4 == 5) {
    print('Untuk mencetak ini semua kondisi harus benar');
  } else {
    print(
        '2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil');
  }

  if (false || true || false) {
    print('Ada satu nilai true');
  } else {
    print('Jika semuanya false, maka ini akan tampil');
  }

  //Exceptions atau pengecualian adalah kondisi yang terjadi saat program tidak berjalan sesuai dengan yang diharapkan.
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  } finally {
    print('This line still executed');
  }
}

// void adalah function yang tidak mengembalikan nilai apapun, dilanjutkan dengan nama function dan parameter yang diperlukan.
void sapa() {
  greet();
}

void greet() {
  print('Hello this is voidfunction');
}

//Function dengan parameter

void main2() {
  greet2('Dicoding', 2015); //fungsi + parameter
}

void greet2(String name, int bornYear) {
  //fungsi + menetapkan tipe data parameter dan nama parameter
  var age = 2023 - bornYear; //var age akan dikurang dengan born year atau 2015
  print(
      'Halo $name! Tahun ini Anda berusia $age tahun'); //var name akan diambil dari saat deklarasi fungsi greet2 yaitu Dicoding
}

void main3() {
  var firstNumber = 7;
  var secondNumber = 10;
  print(
      'Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}'); //fungsi average bisa di dapat kan karena adanya function return
}

double average(num num1, num num2) {
  return (num1 + num2) / 2;
}

//arrow syntax jika sebuah fungsi mau digunakan hanya satu baris dengan notasi =>

/* double average(num num1, num num2) => (num1 + num2) / 2;
void greeting() => print('Hello'); */

//Function dengan parameter opsional

/* void greetNewUser(String name, int age, bool isVerified){}
greetNewUser('Widy', 20, true); */

//Function dengan parameter opsional posisi/positional

//void greetNewUser([String name = "dico", int age = 10, bool isVerified = true]){}

//memangiil fungsi dengan parameter opsional posisi

/*greetNewUser('Widy', 20, true);
greetNewUser('Widy', 20);
greetNewUser('Widy');
greetNewUser();*/

//parameter menghindari null safety

//void greetNewUser([String? name, int? age, bool isVerified = false]) {}

//ketika kita hanya ingin mengisi parameter terakhir saja tapi ingin menghindari null safety pada parameter sebelumnya

/*greetNewUser(null, null, true);
void greetNewUser({String? name, int? age, bool? isVerified}) */

//dengan cara diatas kita bisa memanggil parameter tanpa memperdulikan urutan parameter

/* greetNewUser(name: 'Widy', age: 20, isVerified: true);
greetNewUser(name: 'Widy', age: 20);
greetNewUser(age: 20);
greetNewUser(isVerified: true); */

//gunakan required untuk memaksa penggunaan parameter

//void greetNewUser({required String name, required int age, bool isVerified = false}) {}

//fungsi yang menggunakan scope 

/*void main() {
  var price = 300000;
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;      // pembuatan variabel baru dengan scope lebih kecil
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }

  return discount;
}  */

//deklarasi var secara global

/*var price = 300000;

void main() {
  var discount = checkDiscount(price);  // variabel price dapat diakses di main()
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  if (price >= 100000) {                // selain itu, ia dapat diakses juga di checkDiscount(),
    discount = 10 / 100 * price;        // bahkan, di level pengondisian if.       
  }

  return discount;
} */

//deklarasi var secara global yang salah

/*var price = 300000;

void main() {
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  if (!discountApplied) {            // pemanggilan variabel yang salah sehingga terjadi error
    if (price >= 100000) {
      discount = 10 / 100 * price;
      var discountApplied = true;    // proses deklarasi seharusnya terjadi sebelum pemanggilan variabel
    }
  }

  return discount;
} */ 

/*cons untuk nilai yang tidak berubah
const num pi = 3.14;

void main() {
  var radius = 7;
  print(
      'Luas lingkaran dengan radius $radius = ${calculateCircleArea(radius)}');
}

num calculateCircleArea(num radius) => pi * radius * radius; */

/*final nilai yang bisa di inisialisasi saat program dijalankan
void main() {
  final firstName = "Achmad";
  final lastName = "Ilham";

  //lastName = 'Angga';       // tidak bisa dilakukan pengubahan nilai

  print('Hello $firstName $lastName');
} */

/*if dan else
void main() {
  var score = 85;

  print('Nilai Anda: ${calculateScore(score)}');
}

String calculateScore(num score) {
  if (score > 90) {
    return 'A';
  } else if (score > 80) {
    return 'B';
  } else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  } else {
    return 'E';
  }
} */

/*conditional expressions. 
Dengan ini kita bisa menuliskan if-else statement hanya dalam satu baris:
condition ? true expression : false expression
var shopStatus = now > openHours ? "Hello, we're open" : "Sorry, we've closed";

bentuk lain : 
// expression1 ?? expression2
var buyer = name ?? 'user';

*/ 

/* for loop 
void main() {
  for (int i = 1; i <= 100; i++) {
    print(i);
  }
} */

/*while dan do-while loop

while ketika tidak tahu berapa kali perulangan akan dilakukan
void main() {
  var i = 1;

  while (i <= 100) {
    print(i);
    i++;
  }
}

do while dilakukan diakhir dan setidak nya satu kali
void main() {
  var i = 1;

  do {
    print(i);
    i++;
  } while (i <= 100);
} */

/*break dan continue untuk menghentikan perulangan atau melanjutkan ke perulangan berikutnya
for (int i = 0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i + 1}');
      break;
    }

    or (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
    } */

   /* switch case (sama dengan java)

   void main() {
  final firstNumber = 13;
  final secondNumber = 18;
  final operator = "+";

  switch (operator) {
    case '+':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
      break;
    case '-':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
      break;
    case '*':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
      break;
    case '/':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
      break;
    default:
      print('Operator tidak ditemukan');
  }
} */

