---
title: "Cryptanalysis"
date: 2023-11-22
draft: false
---

At its core, cryptanalysis studies the balance of security vs utility in
[cryptography](/cryptography). A perfectly secure cryptosystem that no
one can or will use serves no purpose.

## Machine Ciphers

- Brute force attack is a method to try every possible key.
        - On average, we expect to try about half of the possible keys
          before finding the correct one.
        - The size of the key space serves as an upper limit on the
          strength to a cipher.

## Computational Security

- The computational effort needed to carry out a [brute force attack](/brute-force-attack) is
  on the order of the size of the key space. O(keyspace)
- A cipher is computationally secure if the best attack is not much
  better than brute force.

## Mathematical Security

Of all methods of encryption, only one has been mathematically proved to
be completely secure --- the [vernam cipher or one-time pad](/vernam-cipher).

## Types of Cryptanalytic Attacks

**Mathematical** attacks (target the underlying algorithm):
- [ciphertext-only attack](https://en.wikipedia.org/wiki/Ciphertext-only_attack)
- [known-plaintext attack](https://en.wikipedia.org/wiki/Known-plaintext_attack)
- [chosen-plaintext attack](https://en.wikipedia.org/wiki/Chosen_plaintext_attack)
- [adaptive-plaintext attack](https://en.wikipedia.org/wiki/Adaptive_chosen_plaintext_attack)
- [related-key attack](https://en.wikipedia.org/wiki/Related-key_attack)

**Side Channel** attacks (target weaknesses in the implementation):
- Power usage
- Timing
- Residual memory contents
- Acoustic signature
- Differential failure

**[Social Engineering](/social-engineering)** attacks (target the user):
- Rubber hose cryptanalysis
- careless user behavior
- weak/default passwords
- pretending to have legitimate access
- naive trust
- freeloaders
- willing insiders
