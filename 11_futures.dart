//Async programming using futures
void main() {
  print('Start');

  // final res1 = await httpGet('endpoint1');
  // final res2 = await httpGet2('endpoint2');

  //final listRes = await Future.wait([httpGet('url'), httpGet2('url')]);

  //print('Result: ${bothRequestResponse(listRes[0], listRes[1])}');

  //print('Result: ${bothRequestResponse(res1, res2)}');

  //traditional way to fetch futures
  httpGet('url').then((value) => value).catchError((err) => err);

  print('End');
}

Future<String> httpGet(String url) {
  return Future.delayed(
    const Duration(seconds: 4),
    () {
      return 'Result request 1';
    },
  );
}

Future<String> httpGet2(String url) {
  return Future.delayed(
    const Duration(seconds: 4),
    () {
      return 'Result request 2';
    },
  );
}

String bothRequestResponse(String res1, String res2) {
  return 'We did it';
}
