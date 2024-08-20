---
title: "Advanced Encryption Standard (AES)"
date: 2024-01-15
draft: false
---

Advanced Encryption Standard (AES) is one of the most secure symmetric
algorithms today. AES generates keys that are 128, 192, or 256 bits.
Cryptographic keys of this size are considered to be safe from
brute force attacks. It’s estimated that brute forcing an AES 128-bit key
could take a modern computer billions of years!

To improve [DES](/des), we consider using the same DES functions
multiple times with different keys. Such approach can make the
[brute force attack](/brute-force-attack) infeasible by increasing the key
length. While [triple DES](/triple-des) provides greater
[security](/security) than DES, it requires three times as much as
computation and thus slower. An alternative approach is to design a
completely new algorithm.

In 1997, US NIST called for better ciphers to replace DES.

AES was standardized in 2001 as a result
[FIPS PUB 197](https://csrc.nist.gov/pubs/fips/197/final)),
which has been designed for simplicity, resulting in speed and code
compactness in CPU.

AES support 128-, 192-, and 256-bit key lengths.
The block size (i.e., the length of the data inputs and outputs) is 128
bits in each case.

AES is *not* based in Feistel [Cipher](/ciphers) but based on
substitution and transposition.
