import 'dart:io';

String mockApi({required String jsonFileName}) =>
    File('test/api/$jsonFileName').readAsStringSync();
