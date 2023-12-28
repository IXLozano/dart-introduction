void main() {
  print('Start');

  httpGet('https://google.com').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });

  print('End');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error http request';
  });
}
