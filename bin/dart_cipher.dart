import 'package:dart_cipher/dart_cipher.dart';

void main() {
  const String message =
      r'IsK2U#UG851t#n$daL5mZlYzO*BaEh5PhFWb:KC68l0!Lm1V9Pxar@9rK0xUeDnD6Xn2qlbT4pm%6$elhHan$AsW2!N9F!pd7B*8';
  const String secretKey1 = 'secret key 1';
  const String secretKey2 = 'secret key 2';

  print('*** Encrypting ***');
  final String encrypted1 = Cipher.encrypt(message, secretKey1);
  final String encrypted2 = Cipher.encrypt(message, secretKey2);

  print('encrypted1: $encrypted1');
  print('encrypted2: $encrypted2');

  print('encrypted1 == encrypted2: ${encrypted1 == encrypted2}');

  print('\n*** Decrypting ***');
  final String decrypted1 = Cipher.decrypt(encrypted1, secretKey1);
  final String decrypted2 = Cipher.decrypt(encrypted2, secretKey2);

  print('decrypted1: $decrypted1');
  print('decrypted2: $decrypted2');

  print('decrypted1 == decrypted2: ${decrypted1 == decrypted2}');
}
