import 'package:dart_cipher/dart_cipher.dart';

void main() {
  final String encrypted = Cipher.encrypt(
    r'IsK2U#UG851t#n$daL5mZlYzO*BaEh5PhFWbKC68l0!Lm1V9Pxar@9rK0xUeDnD6Xn2qlbT4pm%6$elhHan$AsW2!N9F!pd7B*8',
  );
  print('$encrypted');

  final String decrypted = Cipher.decrypt(encrypted);
  print('$decrypted');
}
