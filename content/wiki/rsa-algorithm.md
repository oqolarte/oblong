---
title: "RSA (Rivest–Shamir–Adleman) Algorithm"
date: 2024-01-23
draft: false
math: true
---

Publicly announced in 1976, RSA, an
[asymmetric encryption algorithm](/public-key-cryptosystems),
assumes it's computationally
infeasible to solve [prime factorization](/prime- factorization) problem
given a large integer *n*.
RSA is one of the first asymmetric encryption algorithms that produces a
public and private key pair. Asymmetric algorithms like RSA produce even
longer key lengths. In part, this is due to the fact that these
functions are creating two keys. RSA key sizes are 1,024, 2,048, or
4,096 bits. RSA is mainly used to protect
[highly sensitive data](/privacy).

In RSA, *p* and *q*, positive integers, are used to derive the public
key *e* and private key *d*.

*p* and *q* are not used in the encryption and decryption process;
only *e* and *d* are.

## RSA Encryption and Decryption

To encrypt a message *m*, the sender:
- obtains the recipient's public key {*e*, *n*}
- computes ciphertext \( c = m^e \mod n, where 0 ≤ m < n \)

To decrypt the *c*, the receiver:
- uses the recipient's private key {*d*, *n*}
- computes

\( m = c^d \mod n \), which breaks down as follows:  
\( m = (m^e \mod n)^d \mod n \) (substitute *c*)  
\( m = (m^e)^d \mod n \) (simplify using [modular arithmetic](/modular-arithmetic))  
\( m = m^{ed} \mod n \) (simplify using modular arithmetic)  
\( m = m \) (simplify using modular arithmetic)  

- This holds for carefully chosen *e* and *d*, which are determined by
  prime factors *p* and *q*.

## RSA Key Setup

Each user selects two large primes, *p* and *q*.

For the modulus *n*, compute n = p * q

As per [Euler's Totient Function](/euler-totient-function):
\( ϕ(n) = (p - 1)(q - 1) \)

User selects either the public key *e* or the private key *d* to derive the other.

Suppose the user selects the public key *e*:
- Select random *e* where \( 1 < e < ϕ(n) \), \( gcd(e \times ϕ(n)) = 1 \)
- e is also usually small integer to make the RSA encryption process
  more efficient.
- Derive the private key *d* where \( e \times d ≡ 1 \mod ϕ(n), 0 ≤ d ≤ n \)
- [Extended Euclidean Algorithm](https://en.wikipedia.org/wiki/Extended_Euclidean_algorithm)
  can be used for finding the multiplicative inverse mod ϕ of n by
  plugging in e and ϕ(n) as the two inputs of Euclidean Algorithm, and
  using the fact that the greatest common divisor of e and \( ϕ(n) = 1 \), by
  the definition of e and how it is selected.

The two factors p and q, must kept secret.

## Security of RSA

RSA is vulnerable to chosen ciphertext attack.

Attackers choose ciphertexts and get the decrypted plaintext back.

Vulnerability from being multiplicative:  
\( Enc(m_1) \times Enc(m_2) = Enc(m_1 \times m_2) \)

Attacker wants to know m from c:  
Chooses \( c’ = c·r^e (\mod {n}) \) for some r  
\( m’ = m·r (\mod {n}) \)

The attacker can take m' and multiply it with the multiplicative inverse
of r mod n, to retrieve the original message m.
