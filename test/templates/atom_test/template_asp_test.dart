// import 'package:asp/asp.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   test('Atom next', () async {
//     // arrange
//     final bmiState = atom<double>(0.0);
//     final calcBMI = atomAction2<double, double>(
//       (set, weight, height) {
//         final result = weight / (height * height);
//         set(bmiState, result);
//       },
//     );

//     // assert
//     expect(
//       bmiState.next().then((result) {
//         return result.toStringAsFixed(2);
//       }),
//       completion('20.75'),
//     );

//     // act
//     calcBMI(65, 1.77);
//   });
// }
