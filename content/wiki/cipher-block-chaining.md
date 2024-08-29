---
title: "Cipher block chaining (CBC)"
date: 2024-01-22
draft: false
---
CBC mode chains the previous ciphertext block with the current message
block before the cipher function.
CBC mode is applicable whenever large amounts of data need to be sent
securely provided that all data is available beforehand (like email or
web data).

CBC takes the previous ciphertext block [XOR](/xor)'s it with the
current plaintext block before encryption cipher function. This jumbles
the text and greatly reduces, if not completely removes, patterns from
the plaintext, which is an issue in [ECB](/electronic-codebook).

For decryption, each cipher block is passed through the decryption
function. The result is XOR'd, with the preceding ciphertext block to
produce the plaintext block.

Mathematically:

CBC Encryption  
Ci = Enc(K, [C<sub>i-1</sub> ⊕  Pi])

CBC Decryption  
Pi = Dec(K, Ci) ⊕  C<sub>i-1</sub>

An issue that arises with block modes is, how to handle the last block
which may not be complete and may lack bits from the plaintext. For CBC
mode, if the plaintext does not fully occupy it, we need to pad the last
block.

## Example of CBC

1. Block Cipher Function/Algorithm: Advanced Encryption Standard (AES)
2. Application: Secure Sockets Layer (SSL) and Transport Layer Security
   (TLS)
3. Justification: CBC mode is used in SSL/TLS for secure web browsing
   because it provides a good level of security and does not reveal any
   patterns in the plaintext. Each plaintext block gets XOR'd with the
   previous ciphertext block before being encrypted, making it highly
   resistant to various attacks.
4. Source: [RFC 5246 - The Transport Layer Security (TLS) Protocol Version 1.2, sect ion 6.2.3.2](https://tools.ietf.org/html/rfc5246).
