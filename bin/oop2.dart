/* contoh abstract class
abstract class Animal {
  // Abstract method - harus diimplementasi di child class
  void makeSound(); 
  
  // Concrete method - sudah memiliki implementasi
  void move() {
    print('Moving...');
  }
}

class Cat extends Animal {
  // Wajib mengimplementasi makeSound()
  @override
  void makeSound() {
    print('Meow!');
  }
  
  // move() bisa digunakan langsung atau di-override jika perlu
  @override 
  void move() {
    print('Cat walking...');
  }
}*/

/* menggunakan interface dengan keyword implements

class ClassName implements InterfaceName

atau 

class Flyable {
  void fly() { }
}

atau 

class Bird extends Animal implements Flyable {
  String featherColor;
 
  Bird(String name, int age, double weight, this.featherColor) : super(name, age, weight);
 
}

atau 

import 'animal.dart';
import 'flyable.dart';

class Bird extends Animal implements Flyable {
  String featherColor;

  Bird(String name, int age, double weight, this.featherColor)
      : super(name, age, weight);

  @override
  void fly() {
    print('$name is flying');
  }
}

Keyword atau anotasi @override menunjukkan fungsi tersebut mengesampingkan fungsi 
yang ada di interface atau kelas induknya, 
lalu menggunakan fungsi yang ada dalam kelas itu sendiri sebagai gantinya.

*/

//kumpulan nilai konstan adalah enums

/* contoh penggunaan enums dan juga properties nya

void main() {
  print(Rainbow.values);
  print(Rainbow.blue);
  print(Rainbow.orange.index);
  print(Rainbow.blue.name);   // blue
}

enum Rainbow { red, orange, yellow, green, blue, indigo, violet }

*/

/* contoh penggunaan enums dan juga properties nya di switch case

void main() {
  var weatherForecast = Weather.cloudy;

  switch (weatherForecast) {
    case Weather.sunny:
      print("Today's weather forecast is sunny");
      break;
    case Weather.cloudy:
      print("Today's weather forecast is cloudy");
      break;
    case Weather.rain:
      print("Today's weather forecast is rain");
      break;
    case Weather.storm:
      print("Today's weather forecast is storm");
      break;
  }
}

enum Weather { sunny, cloudy, rain, storm }

*/

/* contoh penggunaan enums dan juga properties nya saat menggunakan variabel atau constructor di dalamnya

enum Weather {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);
 
  final int rainAmount;
 
  const Weather(this.rainAmount);
}
print(Weather.rain.rainAmount);


*/

/* contoh penggunaan enums menggunakan overide dan toString agar bisa menampilkan nilai yang diinginkan

enum Weather {
  …
 
  @override
  String toString() => "Today's weather forecast is $name with a $rainAmount% chance of rain";
}

contoh lebih lengkap 

void main() {
  var weatherForecast = Weather.cloudy;

  print(weatherForecast);
}

enum Weather {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);

  final int rainAmount;

  const Weather(this.rainAmount);

  @override
  String toString() =>
      "Today's weather forecast is $name with a $rainAmount% chance of rain";
}
*/

/* mixin adalah sebuah kelas yang berisi fungsi-fungsi yang dapat digunakan 
kembali oleh kelas lain tanpa harus mewariskan kelas tersebut.

mixin Flyable {
  void fly() {
    print("I'm flying");
  }
}
 
mixin Walkable {
  void walk() {
    print("I'm walking");
  }
}

lalu  untuk menggunakan mixin, kita menggunakan kata kunci with.

class Cat extends Mammal with Walkable { }
 
Ketika mencampur (mixing) kelas, kelas yang digunakan sebagai mixin tidak paralel namun saling bertumpuk. 
Itulah mengapa kelas atau method pada mixin tidak ambigu satu sama lain. Karena itu jugalah, urutan menjadi 
hal yang penting dalam menerapkan mixin. Misalnya kita telah menerapkan mixin pada kelas Musician.

mixin Dancer implements Performer {
  @override
  void perform() {
    print('Dancing');
  }
}
 
mixin Singer implements Performer {
  @override
  void perform() {
    print('Singing');
  }
}
 
class Musician extends Performer with Dancer, Singer {
  void showTime() {
    perform();
  }
}

*/

/* extension method adalah sebuah fitur yang memungkinkan kita menambahkan fungsi atau properti baru

void main() {
  var unsortedNumbers = [2, 5, 3, 1, 4];
  print(unsortedNumbers);

  var sortedNumbers = unsortedNumbers.sortAsc();

  print(sortedNumbers);
}

extension Sorting on List<int> {
  List<int> sortAsc() {
    var list = this;
    var length = this.length;

    for (int i = 0; i < length - 1; i++) {
      int min = i;
      for (int j = i + 1; j < length; j++) {
        if (list[j] < list[min]) {
          min = j;
        }
      }

      int tmp = list[min];
      list[min] = list[i];
      list[i] = tmp;
    }

    return list;
  }
}
  
  */