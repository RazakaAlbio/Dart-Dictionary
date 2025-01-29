/*List (mirip array)
void main() {
  List dynamicList = [1, 'Dicoding', true];
  print(dynamicList.runtimeType);
}
Output:
List<dynamic> 

bisa juga memanggil objek yang ada di list menggunakan index dan di mulai dari [0] 

menggunakan  list di for loop :
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];
  for (int i = 0; i < stringList.length; i++) {
    print(stringList[i]);
  }
}

list menggunakan for each loop dan lambda dan anonymous function:
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];

  stringList.forEach((s) => print(s));
};

menambahkan data di akhir list menggunakan add:
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];

  //Menambahkan data di akhir list.
  stringList.add('Flutter');

  print(stringList);
}

menambahkan data di list dengan posisi tertentu menggunakan insert:
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart", "Flutter"];
  // Menambahkan data di indeks ke-0.
  stringList.insert(0, 'Programming');
  print(stringList);
}

menguubah data di list :
stringList[1] = 'Application';

menghapus data di list menggunakan remove:
void main() {
  List<String> stringList = [
    "Programming",
    "Hello",
    "Dicoding",
    "Dart",
    "Flutter"
  ];

  // Menghapus list dengan nilai Programming
  stringList.remove('Programming');

  // Menghapus list pada index ke-1
  // stringList.removeAt(1);

  // Menghapus data list terakhir
  // stringList.removeLast();

  // Menghapus list mulai index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)
  // stringList.removeRange(0,2);

  print(stringList);
}

menyebar list menggunakan spread operator:
void main() {
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];
  var allFavorites = [...favorites, ...others];
  print(allFavorites);
}

/// Output:
/// [Seafood, Salad, Nugget, Soup, Cake, Pie, Donut]


mengatasi list yang bernilai null menggunakan null-aware spread operator:
void main() {
  List<dynamic>? list;
  List<dynamic>? list2 = [0, ...?list];
  print(list2);
}
 
/// Output:
/// [0]
*/

/*set (collection yang hanya dapat menyimpan nilai yang unik. 
Ini akan berguna ketika Anda tidak ingin ada data yang sama 
alias duplikasi dalam sebuah collection.)

void main() {
  Set<int> anotherSet = new Set.from([1, 4, 6, 4, 1]);

  print(anotherSet);
}

/// Output:
/// {1, 4, 6}

menambahkan data ke set menggunakan add dan addAll:
void main() {
  Set<int> anotherSet = new Set.from([1, 4, 6, 4, 1]);

  print(anotherSet);
}

/// Output:
/// {1, 4, 6}

menghapus data di set menggunakan remove:
void main() {
  var numberSet = {1, 4, 6, 2, 3};
  // Menghapus nilai 3 dari Set.
  numberSet.remove(3);
  print(numberSet);
}
 
/// Output:
/// {1, 4, 6, 2}

menampilkan data di set di index tertentu menggunakan elementAt:
void main() {
  var numberSet = {1, 4, 6, 2, 3};
  // Mendapatkan data Set pada indeks ke-2
  print(numberSet.elementAt(2));
}
 
/// Output:
/// 6

union dan intersection pada set 
(union untuk menggabungkan dua set dan intersection 
untuk mendapatkan nilai yang sama dari dua set):

void main() {
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);

  print("union: $union");
  print("intersection: $intersection");
}

/// Output:
/// union: {1, 2, 4, 5, 7}
/// intersection: {1, 5}

*/

/*Map (collection yang berisi pasangan key-value.)

void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  print(capital['Jakarta']);
}

menampilkan semua key dan value di map menggunakan keys dan values:
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  var mapKeys = capital.keys;
  print("mapKeys: $mapKeys");

  var mapValues = capital.values;
  print("mapValues: $mapValues");
}

/// Output:
/// mapKeys = (Jakarta, London, Tokyo)
/// mapValues = (Indonesia, England, Japan)

untuk menambahkan data di map menggunakan operator []:
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  capital['New Delhi'] = 'India';

  print(capital);
}

/// Output:
/// {Jakarta: Indonesia, London: England, Tokyo: Japan, New Delhi: India}

clear () untuk menghapus data di map menggunakan operator []

*/

