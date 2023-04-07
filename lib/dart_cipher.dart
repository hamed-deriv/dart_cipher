import 'dart:convert';
import 'dart:math';

/// A class that provides methods for encrypting and decrypting strings.
class Cipher {
  /// Encrypts a string.
  static String encrypt(String input) {
    final String key = _generateKey();
    final String encoded = base64Encode(input.codeUnits);
    final String encrypted = _crypt(encoded, key);

    return base64Encode('$key:$encrypted'.codeUnits);
  }

  /// Decrypts a string.
  static String decrypt(String input) {
    final String decoded = String.fromCharCodes(base64Decode(input));
    final List<String> parts = decoded.split(':');
    final String key = parts.first;
    final String encrypted = decoded.substring(key.length + 1);
    final String decrypted = _crypt(encrypted, key);

    return String.fromCharCodes(base64Decode(decrypted));
  }

  static String _crypt(String input, String key) {
    final StringBuffer result = StringBuffer();

    for (int i = 0; i < input.length; i++) {
      final int inputChar = input.codeUnitAt(i);
      final int keyChar = key.codeUnitAt(i % key.length);
      final int outputChar = inputChar ^ keyChar;

      result.write(String.fromCharCode(outputChar));
    }

    return '$result';
  }

  static String _generateKey() {
    final Random random = Random.secure();
    final List<int> key = List<int>.generate(16, (_) => random.nextInt(256));

    return base64Encode(key);
  }
}
