import 'package:test/test.dart';

import 'package:dart_cipher/dart_cipher.dart';

void main() {
  group('cipher tests =>', () {
    test('encrypt and decrypt should return the same string.', () {
      const String input = 'secret message';
      final String encrypted = Cipher.encrypt(input);
      final String decrypted = Cipher.decrypt(encrypted);

      expect(decrypted, equals(input));
    });

    test('encrypt and decrypt should work with empty strings.', () {
      const String input = '';
      final String encrypted = Cipher.encrypt(input);
      final String decrypted = Cipher.decrypt(encrypted);

      expect(decrypted, equals(input));
    });

    test(
        'encrypt and decrypt should produce different results with different keys.',
        () {
      const String input = 'secret message';
      final String encrypted1 = Cipher.encrypt(input);
      final String encrypted2 = Cipher.encrypt(input);

      expect(encrypted1, isNot(equals(encrypted2)));

      final String decrypted1 = Cipher.decrypt(encrypted1);
      final String decrypted2 = Cipher.decrypt(encrypted2);

      expect(decrypted1, equals(input));
      expect(decrypted2, equals(input));
      expect(decrypted1, equals(decrypted2));
    });
  });
}
