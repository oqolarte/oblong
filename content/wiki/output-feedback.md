---
title: "Output Feedback (OFB)"
date: 2024-01-22
draft: false
math: true
---
OFB enables stream cipher-like operation for block ciphers. Similarly
to CFB mode, it uses the encrypted cipher function and the key to
generate random bits, which then gets combined with the data by
[XOR](/xor).

The output of the encryption function is the feedback to the next block,
hence the name. This is in contrast to [CFB](/cipher-feedback) which
takes the cipher text of the previous block. One interesting aspect of
OFB is that, the data, the plaintext or ciphertext, is not involved in
the cipher function processing. Therefore, these processes involving the
encryption function can be done offline, even when none of the data is
available.

Encryption: \( C_i = P_i ⊕  Enc(K, [C_i-1 ⊕  P_i-1]) \)  
Decryption: \( P_i = C_i ⊕  Enc(K, [C_i-1 ⊕  P_i-1]) \)
