---
title: "Ciphers"
date: 2024-01-15
draft: false
---

## Block cipher

Block cipher processes blocks (multiple bits). If the last block is
incomplete, it adds pad bits ("padding").

Block cipher function: n bits --> n bits  
2^n possible block options

Given the key K, the computation of the function is deterministic and
easy.

### Block Cipher Operation Modes

Handles plaintext that can be longer than a block in a secure manner.

- [Electronic Codebook](/electronic-codebook) (ECB)
- [Cipher Block Chaining](/cipher-block-chaining) (CBC)
- [Cipher Feedback](/cipher-feedback) (CFB)
- [Output Feedback](/output-feedback) (OFB)
- [Counter](/counter-block-cipher) (CTR)

## Stream Cipher

Stream ciphers are designed to encrypt data one bit at a time (or byte
at a time), depending on the specific cipher. Unlike block ciphers,
stream ciphers do not require the input data to be of a certain block
size because they work by generating a keystream that is as long as the
plaintext message. This keystream is then combined with the plaintext
bit by bit (or byte by byte) to produce the ciphertext.

For example, you are given a stream cipher and a block cipher with a
block size of 64 bits. The data input is 32 bits. The stream cipher
processes the data in bits (or the smallest unit for information
processing), and it will generate a 32-bit keystream, which will be used
directly to encrypt the 32 bits of input data. **No need for padding.**

### Convert block cipher to stream cipher

It is also possible to convert a block cipher into a stream cipher.

1. Use the block cipher as a pseudo-random generator by way of CFB.
2. Take these random bits to combine them with the data by [XOR ing](/xor) them.

## Feistel Cipher

Named after Horst Feistel, an IBM researcher who wanted an approximation
of ideal block cipher, built out of components that are easily
realizable.

It works as follows:

1. Take a plaintext message and split it into two equal parts, let's
   call them the left half and the right half.
2. To start encryption, take the right half and the key and use it to
   "mix up" the left half using a function (called round function).
3. The output of the round function is [XOR](/xor)'d with the left half.
   Note that you don't mix up the right half yet. This mixing is usually
   just combining them in some simple way, like layering them together.
4. Now after mixing, you swap the halves: the left becomes the right
   half, and the right becomes the left half. But remember, the original
   right half has not been scrambled yet---it was only used to encrypt
   the left half.
5. Repeat the steps 2 to 3 of scrambling and swapping several times.
   Each time you use a slightly different secret key---a subkey derived
   from the main key K. The key K is not directly used in the rounds,
   and each subkey is different from one another and from K itself.
6. After several rounds (iterations) your message is well encrypted.
7. Decryption is just doing the reverse.

Examples of Feistel Ciphers:
- [DES (Data Encryption Standard)](/des)
- Blowfish
- Twofish

### Feistel Cipher Design Parameters

- Block size
- Key size
- Number of rounds
- Subkey generation
- Round function
