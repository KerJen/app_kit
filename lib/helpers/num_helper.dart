import 'dart:math';
import 'dart:typed_data';

Uint8List randomBytes(int length, {bool secure = false}) {
  assert(length > 0);

  final random = secure ? Random.secure() : Random();
  final result = Uint8List(length);

  for (var i = 0; i < length; i++) {
    result[i] = random.nextInt(256);
  }

  return result;
}

commaToDot(String num) {
  return num.replaceFirst(",", ".");
}
