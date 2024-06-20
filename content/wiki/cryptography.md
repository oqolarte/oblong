---
title: "On Cryptography"
date: 2022-08-25
draft: false
---

Cryptography is the art and science of secret [communications](/communication).
It's about making and analyzing protocols that prevent third party (or
the public) from reading private messges.

The earliest evidence of cryptography comes from ancient Egypt enciphering
their hieroglyphic or symbol-based writings on monuments and walls. 

Modern applications also include integrity of digital transactions.

## Intro to Cryptography

- Cryptography uses the idea of "alphabet" to express the minimal
  information unit used by the communication system. In cryptography,
  alphabet:
    - is minimal unit for information coding
    - can be letters, numbers, signs, etc,
    - Examples of alphabets:
        - English: {a, b, c, ..., z} (26)
        - Morse code: {., -} (2)
        - Computer bits: {1, 0} (2)
        - Decimal: {0, 1, 2, ..., 9} (10)
        - Hexadecimal: {0, 1, 2, ..., F} (16)
- Cast of characters:
    - Good guys: Alice and Bob
    - Bad guys: Eve (eavesdropper) and Malory (malicious)
    - Trusted third party: Trent
- Basic Terms: plaintext, ciphertext, encrypt, decrypt
- Threat Model: Read, Change, Forge [the message/s between actors]
- [Information Security](/infosec) Goals:
    - Confidentiality -- can't read our messages; only authorized users
      can access specific assets or data
    - Integrity -- can't change our messages; data is correct and
      reliable
    - Authenticity -- can't forge our messages
- The algorithm is the key to encrypt and decrypt the ciphertext, to and
  from plaintext.
- In [cryptanalysis](/cryptanalysis), codes and [ciphers](/ciphers) are not the same:
    - Codes can convey complex messages through small and simple
      transmissions.But they are not generic and it's hard to convey
      arbitrary messages with them.
    - Ciphers can also convey complex messages *and* can be used in
      generic messages, as ciphers can encrypt data without regard
      to what they mean in the message. Ciphers lend themselves to
      more rigorous mathematical design and analysis.

## Modern Principles in Cryptography
- [Kerckhoffs's Principle](/kerckhoffs-principle) - states that a
  cryptosystem should remain secure, even if the adversary knows every
  detail of the system, except the key.
- [Key Distribution and Management](/key-distribution)
- [Public Key Cryptosystems](/public-key-cryptosystems)
- [Trusted Third Parties](/trusted-third-party)
- Human Factors (i.e., the human is usually the weakest link)
    - Humans must obey the protocol's rules.
    - Even highly trained operators get careless.
    - Modern crypto users are untrained.
- [Frequency Analysis of Monoalphabetic Ciphers](/monoalphabetic-ciphers)
- [Key Length Determination in Polyalphabetic ciphers](/polyalphabetic-ciphers)
- [Hash Functions](/hash-functions)

## Things to look up

Modern cryptography is heavily based on
the following concepts:

- [Index of Coincidence](/index-of-coincidence)
- [Kasiski's Examination](/kasiski-examination)
- [Sieve of Eratosthenes](/sieve-of-eratosthenes)
- Private Information retrieval
    - Or; How can one pull information from a public database
      without revealing anything about what one has accessed?
    - More info: https://nautil.us/cryptographers-solve-decades-old-privacy-problem-444899/

### Related to math

[Mathematics](/math) can prove that a given cryptography method is
"unbreakable."

Modern cryptographic systems, particularly Public Key Cryptosystems
based on asymmetric cryptographic algorithms,
rely heavily on certain topics in [number theory](/number-theory),
to create ciphers among others.
More specifically, it's about understanding integer mathematics and
abstract algebra, in which calculations must be exact (i.e., no round
off error).

Modern cryptography is also based on concepts
like [mathematical proof](https://en.wikipedia.org/wiki/Mathematical_proof).
It's important because it determines whether we can trust a particular
method to work in keeping our secrets secret for a long while. That is,
it establishes the computational hardness of problems, ensuring the
[security](/security) and resilience of cryptographic algorithms and
protocols.

[Statistics](/statistics) -- to break ciphers

Elliptic curves,
group theory,
arithmetic of abelian varieties,
elliptic curve cryptography.

## Misc Notes

- Modern cryptosystems are sufficiently secure to render key recovery
  via plaintext-only attacks almost useless.
- Most ciphertexts are too short to be expected to contain all of the
  possible cipher alphabet symbols.
