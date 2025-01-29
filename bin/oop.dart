/* mendefisinikan class 
class ClassName {
  // properti
  type propertyName;
  // method
  returnType methodName() {
    // body
  }
}
*/

/*contoh penggunaan class
class Animal {
  String name;
  int age;
  double weight;
 
  Animal(this.name, this.age, this.weight);
 
  void eat() {
    print('$name is eating.');
    weight = weight + 0.2;
  }
  
  void sleep() {
    print('$name is sleeping.');
  }
 
 
  void poop() {
    print('$name is pooping.');
    weight = weight - 0.1;
  }
} */

/* membuat object dari class
var nameOfObject = NameOfClass(property1, property2);
var dicodingCat = Animal('Gray', 2, 4.2);
*/

/*contoh penggunaan class
void main() {
  var dicodingCat = Animal('Gray', 2, 4.2);

  dicodingCat.eat();
  dicodingCat.poop();

  print(dicodingCat.weight);
}

class Animal {
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight);

  void eat() {
    print('$name is eating.');
    weight = weight + 0.2;
  }

  void sleep() {
    print('$name is sleeping.');
  }

  void poop() {
    print('$name is pooping.');
    weight = weight - 0.1;
  }
} */

/* properti class
class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;
}*/

//gunakan import untuk mengakses library yang sudah ada
//import 'animal.dart';

//gunakan underscore (_) untuk menandai properti private

/*gunakan getter dan setter untuk mengakses properti private
//Setter
set name(String value) {
  _name = value;
}
 
// Getter
double get weight => _weight;
*/

/* mengubah nilai properti menggunakan pemanggilan method
void eat() {
  print('$_name is eating.');
  _weight = _weight + 0.2;
}
 
void poop() {
  print('$_name is pooping.');
  _weight = _weight - 0.1;
} */

/*contoh full property dan method
class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;
 
  Animal(this._name, this._age, this._weight);
 
  // Setter
  set name(String value) {
    _name = value;
  }
 
  // Getter
  double get weight => _weight;
  int get age => _age;
 
  // Methods
  void eat() {
    print('$_name is eating.');
    _weight = _weight + 0.2;
  }
 
  void sleep() {
    print('$_name is sleeping.');
  }
 
  void poop() {
    print('$_name is pooping.');
    _weight = _weight - 0.1;
  }
} */

/*contoh constructor
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;
 
  Animal(String name, int age, double weight) {
    this.name = name;
    this.age = age;
    this.weight = weight;
  }
} */

/*contoh named constructor
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;
 
  // Mendeklarasikan sebuah constructor
  Animal(String name, int age, double weight) {
    this.name = name;
    this.age = age;
    this.weight = weight;
  }
 
  // atau dengan cara berikut
  // Animal(this.name, this.age, this.weight);
 
  // Berikut beberapa contoh untuk mendeklarasikan
  // Named Constructor.
  Animal.name(this.name);
  Animal.age(this.age);
  Animal.weight(this.weight);
} */

/*contoh initializer list
class Animal {
  ...
 
  Animal.cat(this.name, this.weight) : age = 2 {
    // write your code here.
  }
} */

/*contoh cascade notation menggunakan ..
import 'animal.dart';

void main() {
  var dicodingCat = Animal('', 2, 4.2)
    ..name = 'Gray'
    ..eat();
} */

/*contoh cascade notation pada builder pattern
final addressBook = (AddressBookBuilder()
      ..name = 'jenny'
      ..email = 'jenny@example.com'
      ..phone = '415-555-0100')
    .build(); */

/*contoh inheritance
class ChildClass extends ParentClass {

atau 

class Cat extends Animal {
  final String furColor;
 
  Cat(String name, int age, double weight, String furColor)
      : this.furColor = furColor,
        super(name, age, weight);
 
  void walk() {
    print('$name is walking');
  }
}  */

/*menginisialisasi properti dari class parent

menggunakan super() untuk menginisialisasi properti dari class parent
Cat(String name, int age, double weight) : super(name, age, weight);

menambahkan parameter baru pada class child
Cat(String name, int age, double weight, String furColor) : this.furColor = furColor, super(name, age, weight);

versi ringkas
Cat(String name, int age, double weight, this.furColor) : super(name, age, weight); 

perbedaan .. dan super 

// Tanpa cascade
var person = Person();
person.setName('John');
person.setAge(25);
person.setAddress('Jakarta');

// Dengan cascade
var person = Person()
  ..setName('John')
  ..setAge(25)
  ..setAddress('Jakarta');

  dan

  class Animal {
  void makeSound() {
    print('Some sound');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    super.makeSound(); // Memanggil makeSound() dari class Animal
    print('Meow');
  }
}
*/