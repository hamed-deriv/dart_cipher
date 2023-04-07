# Cipher class

The Cipher class is a Dart class that provides methods for encrypting and decrypting strings.

### Public methods

`String encrypt(String input)`

This method accepts a string as input, encrypts it using a generated key, and returns the encrypted string as a base64-encoded string. The encryption algorithm used is a simple XOR cipher with the generated key.

### Parameters

`input` (required): A string to be encrypted.

### Returns

A base64-encoded string representing the encrypted input.

`String decrypt(String input)`

This method accepts a base64-encoded string as input, decrypts it using the key embedded in the input, and returns the original plaintext string. The decryption algorithm used is the reverse of the encryption algorithm, which is a simple XOR cipher with the generated key.

#### Parameters

`input` (required): A base64-encoded string representing the encrypted input.

#### Returns

A string representing the original plaintext input.

### Private methods

`String _crypt(String input, String key)`
This method accepts a string and a key as inputs, applies the XOR cipher using the key to each character in the input string, and returns the resulting string.

#### Parameters

`input` (required): A string to be encrypted or decrypted.

`key` (required): A string used as the key for the XOR cipher.

#### Returns

A string representing the encrypted or decrypted input.

`String _generateKey()`

This method generates a random 16-byte key and returns it as a base64-encoded string.

#### Returns

A base64-encoded string representing the generated key.
