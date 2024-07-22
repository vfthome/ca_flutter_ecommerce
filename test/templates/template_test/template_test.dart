import 'package:flutter_test/flutter_test.dart';

//* --- TEMPLATE TEST GROUP ---
void main() {
  group('Template - Tests Group', () {
    //* TEST SOME BEHAVIOR
    test('Should do...', () {
      // arrange
      int number1 = 2;
      int number2 = 1;

      // act
      final result = _sumFunction(number1, number2);

      // assert
      expect(result, 3);
    });
    //* TEST ANOTHER BEHAVIOR
    test('Should do...', () {
      // arrange
      int number1 = 2;
      int number2 = 1;

      // act
      final result = _sumFunction(number1, number2);

      // assert
      expect(result, 3);
    });
  });
}

_sumFunction(int number1, int number2) {
  return number1 + number2;
}
