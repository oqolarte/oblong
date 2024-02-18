---
title: "Diffie-Hellman Key Exchange"
date: 2024-01-26
draft: false
---
Diffie-Hellman Key Exchange (DH) is a mathematical method of securely
exchanging cryptographic keys over a public channel.

It's the first published [asymmetric algorithm](/public-key-cryptosystems).

Its [security](/security) relies on [Discrete Log Problem](/discrete-logarithm).

## Setup

Alice and Bob want to exchange secret key. They agree on the global
parameters: prime number *p*, and an integer *a*

Each randomly selects X < p, and computes  
Y = a^x mod p  
to protect the value of X by exponentiation.
Here, X is private key, Y is public key.

For an attacker monitoring the exchange of the public key Y's to recover
either of the private key X's, they will need to solve the discrete
logarithm problem, which is difficult.

## Protocol

https://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange#Cryptographic_explanation

## Man-in-the-middle attack

DH is vulnerable to man-in-the-middle attack due to it having no
authentication.
