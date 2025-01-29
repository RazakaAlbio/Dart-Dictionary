import 'dart:io';

void main() {
  stdout.write('masukan suhu dalam fahrenheit:');
  var fahrenheit = num.parse(stdin
      .readLineSync()!); // Membaca input suhu dalam fahrenheit dari pengguna dan menyimpannya dalam variabel 'fahrenheit' dan menkonversi menjadi number yaitu int ataupun double
  var celcius =
      (fahrenheit - 32) * 5 / 9; //rumus konversi fahrenheit ke celcius
  print('$fahrenheit derajat Fahrenheit = $celcius derajat Celcius \n');

  stdout.write('masukan suhu dalam reamur:');
  var reamur = num.parse(stdin
      .readLineSync()!); //stdin untuk memasukan input laludi baca dengan read line sync dengan mengabaikan tipe data input default yaitu string menggunakan ! dan menghilangkan null safety lalu konversi menjadi number menggunakan num.parse, lalu disimpan ke variabel reamur
  var kelvin = (reamur * 5 / 4) + 273; //rumus konversi reamur ke kelvin
  print('$reamur derajat reamur = $kelvin derajat Kelvin \n');
}
