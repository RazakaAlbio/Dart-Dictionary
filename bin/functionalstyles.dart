/* lambda functions adalah nameless functions
void main() {
  var sum = (int num1, int num2) {
    return num1 + num2;
  };
 
  Function printLambda = () {
    print('This is lambda function');
  };
}
*/

/* contoh pemanggilan 
printLambda();
print(sum(3, 4));
*/

/* lambda functions juga bisa menggunakan function expression menggunakan fat arrow =>
void main() {
  var sum = (int num1, int num2) => num1 + num2;

  Function printLambda = () => print('This is lambda function');

  // Memanggil nama variabel dari anonymous function
  print(sum(3, 4));
  printLambda();
}
*/

/*Higher order function adalah fungsi yang menggunakan 
fungsi lainnya sebagai parameter, menjadi tipe kembalian (return), atau keduanya.

contoh dan cara pemanggilan

void main() {
  // Opsi 1
  int Function(int num1, int num2) sum = (int num1, int num2) => num1 + num2;
  myHigherOrderFunction('Hello', sum);

  // Opsi 2
  myHigherOrderFunction('Hello', (num1, num2) => num1 + num2);
}

void myHigherOrderFunction(
  String message,
  int Function(int num1, int num2) myFunction,
) {
  print(message);
  print(myFunction(3, 4));
}

dan 

void myHigherOrderFunction(String message, Function myFunction) {
  print(message);
  print(myFunction(3, 4));  // sum(3, 4)    // return 3 + 4
}
  
  */

/* Closure adalah fungsi yang dapat mengakses variabel di luar scope-nya.

contohnya

void main() {
  var closureExample = calculate(2);
  closureExample();
  closureExample();
}

Function calculate(base) {
  var count = 1;

  return () => print("Value is ${base + count++}");
}
*/

