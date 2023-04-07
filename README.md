# Cipher

The `Cipher` class is a Dart implementation of a simple encryption algorithm. It provides methods to encrypt and decrypt strings using a key with a random salt value.

## Usage

### Encrypting a string

To encrypt a string using the `Cipher` class, you can call the `encrypt` method and pass in the message and key parameters. The method will return the encrypted message with a random salt value in the following format: `encodedSalt:encodedMessage`.

```dart
String encryptedMessage = Cipher.encrypt('secret message', 'my secret key');
print(encryptedMessage);
```

### Decrypting a string

To decrypt a string using the `Cipher` class, you can call the `decrypt` method and pass in the ciphertext and key parameters. The method will return the original message.

```dart
String decryptedMessage = Cipher.decrypt('NlU5cHpPbGkxVnBzaXp3Y3E3M3MwZzNlcjM4RHpWQ2Q=:F4JxKj4kNC/7Wwl2tN/AC1TmTt/8moNerTHkq3I=', 'my secret key');
print(decryptedMessage);
```

## How it works

The Cipher class generates a random 32-byte salt value and combines it with the key using the UTF-8 encoding. The resulting byte array is used as a key to encrypt or decrypt the input message. The algorithm uses a simple byte-by-byte XOR operation, combined with an addition or subtraction of the key byte value. The key bytes are cycled through for each byte of the input message. The resulting encrypted message is base64 encoded along with the salt value and returned as a string in the format `encodedSalt:encodedMessage`.
