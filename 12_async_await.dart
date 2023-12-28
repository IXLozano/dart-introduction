void main() async {
  print('Start');

  try {
    final value = await httpGet('https://google.com');
    print(value);
  } catch (err) {
    print('We have an error: $err');
  }

  print('End');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw 'Request error';
}
