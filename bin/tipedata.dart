void main() {
  // Tipe data int
  int umur = 18; // variabel umur dengan tipe data int
  print(umur); // print umur

  // Tipe data double
  double tinggi = 1.75; // variabel tinggi dengan tipe data double
  print(tinggi); // print tinggi

  // Tipe data num
  num berat = 70; // variabel berat dengan tipe data num
  print(berat); // print berat
  berat = 70.5; // num bisa menyimpan nilai int atau double
  print(berat); // print berat

  // Tipe data bool
  bool isStudent = true; // variabel isStudent dengan tipe data bool
  print(isStudent); // print isStudent

  // Tipe data String
  String nama = 'Bio'; // variabel nama dengan tipe data String
  print(nama); // print nama

  // Tipe data List
  List<String> hobbies = [
    'Reading',
    'Coding',
    'Gaming'
  ]; // variabel hobbies dengan tipe data List
  print(hobbies); // print hobbies

  // Tipe data Map
  Map<String, int> scores = {
    'Math': 90,
    'Science': 85
  }; // variabel scores dengan tipe data Map
  print(scores); // print scores

  // Tipe data dynamic
  dynamic variabel = 'Hello'; // variabel variabel dengan tipe data dynamic
  print(variabel); // print variabel
  variabel = 123; // dynamic bisa berubah tipe data
  print(variabel); // print variabel
}
