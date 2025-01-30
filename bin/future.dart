/* future adalah cara kita untuk melewati urutan kode (asycronus)

contoh untuk uncompleted dengan menambahkan method delay dan fungsi getOrder()

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee Boba';
  });
}

contoh untuk completed with data dengan menambahkan method then

void main() {
  getOrder().then((value) {
    print('Your ordered: $value');
  });
  print('Getting your order...');
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee Boba';
  });
}

contoh untuk completed with errors dengan menambahkan method catch

void main() {
  getOrder().then((value) {
    print('Your ordered: $value');
  }).catchError((error) {
    print('Sorry. $error');
  });
  print('Getting your order...');
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = false;
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}

contoh untuk method whenCompleted ketika suatu fungsi future telah selesai dijalankan

void main() {
  getOrder().then((value) {
    print('Your ordered: $value');
  }).catchError((error) {
    print('Sorry. $error');
  }).whenComplete(() {
    print('Thank you');
  });
  print('Getting your order...');
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = false;
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}

untuk merubah main() menjadu async adalah dengan 

void main() async { … }

lalu tambahkan await sebelum fungsi yang mengembalikan nilai future 

var order = await getOrder();

contoh penggunaan async dengan penulisa sync

void main() async {
  print('Getting your order...');
  var order = await getOrder();
  print('You order: $order');
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee Boba';
  });
}

contoh untuk menangani error gunakan try dan catch 

void main() async {
  print('Getting your order...');
  try {
    var order = await getOrder();
    print('You order: $order');
  } catch (error) {
    print('Sorry. $error');
  } finally { //when complete jg bisa ditulis dengan finally
    print('Thank you');
  }
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee Boba';
  });
}
*/


