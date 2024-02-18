---
title: "Public Key Cryptosystems"
date: 2023-11-22
draft: false
math: true
---

Asymmetric cryptography, or public key cryptography,
consisting of a pair keys, one private key and the other public key,
underlies virtually all e-commerce, online banking, and
telecommunications systems.

It works like this:

1. A large random number is generated.
2. That number is used to derive two mathematically-related but
   different keys. Each key is also a large number.
3. Data can be encrypted by processing one of the keys and the data to
   be encrypted using an encryption algorithm. Once encrypted, the data
   appears to be a meaningless stream of numbers.
4. The encrypted data cannot be decrypted using the original key,
   yielding the original data. However, it can be decrypted using the
   other key, and vice-versa.

Using a pair of keys is different from symmetric cryptography,
which is one key for both Alice and Bob.

> If you want to keep something a secret, never tell anyone.
> If two people know the secret, then it's no longer a secret.

- Do users really need a shared secret? (Symmetric cryptography)
- Can 2 different, but related, keys to be used? (Asymmetric
  cryptography)
- Can one of the keys be made public?

Distribution of public keys are trivial in principle. But in practice,
distribution with trust is more complicated. For example, how does Bob
know that the public key he finds is really Alice's public key? Perhaps
Mallory made up a pair of keys and published one of those in Alice's
name. Bob has to be able to trust that the key he looks up really is the
one published by Alice.

Whether symmetric or asymmetric cryptography,
a practical cryptosystem operating on a meaningful scale
uses some form of [trusted third party](/trusted-third-party).

Asymmetric cryptography was invented to address:
- Key distribution
- Digital Signatures

Asymmetric cryptography can not only be used for confidentiality but
also for authentication.

[RSA](/rsa-algorithm) (Rivest-Shamir-Adleman) is a widely used algorithm for secure data
transmission.

[Diffie-Hellman Key Exchange](/diffie-hellman-key-exchange) (DH) uses exponentiation in a finite field.

[El Gamal Encryption](/el-gamal-encryption) is related to DH.

## Asymmetric Cipher Requirements

- Should be computationally easy for any use *i* to generate the key
  pair
- Encryption and Decryption computations are computationally easy (can
  be solved in polynomial time as a function of the input length).
- Should be infeasible to derive the private key from the public key or the ciphertext

## Trapdoor One-way function

One way function:

\( y = f(x) \) is easy;  
\( x = f^{-1}(y) \) is infeasible

Trapdoor one way function:
- \( y = f(x) \) is easy, if k and x are known
- \( x = f^{-1}(y) \) is easy, if k and y are known
- \( x = f^{-1}(y) \) is infeasible if y known, but k is not

Trapdoor one-way function plays a significant role in asymmetric
cryptography. And the development of a practical asymmetric cryptography
scheme depends on the discovery of a suitable trap door one-way
function.
