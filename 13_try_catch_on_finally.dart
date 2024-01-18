//Try catch and Exceptions
void main() async {
  print('Start');

  try {
    final value = await httpGet('https://google.com');
    print('Success: $value');
  } on MyCustomException catch (err) {
    print('Exception: $err');
  } on Exception catch (err) {
    print('OOPS!! custom exception: $err');
  } catch (err) {
    print('OOPS!! something bad happened: $err');
  } finally {
    print('try y catch end');
  }

  print('End');
}

//Domi http Request that does not work
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw MyCustomException('There is not URL parameters');
}

//Custom Exception
class MyCustomException implements Exception {
  final String message;
  MyCustomException(this.message);

  @override
  String toString() => 'MyCustomException: $message';
}
