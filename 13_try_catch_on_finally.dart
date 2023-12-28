void main() async {
  print('Start');

  try {
    final value = await httpGet('https://google.com');
    print('Success: $value');
  } on Exception catch (err) {
    print('Exception: $err');
  } catch (err) {
    print('OOPS!! something bad happened: $err');
  } finally {
    print('try y catch end');
  }

  print('End');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('There is not URL parameters');
}
