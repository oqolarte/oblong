---
title: "Modular Exponentiation"
date: 2023-12-19
draft: false
math: true
---
Is exponentiation performer over a modulus.
Useful in computer science, especially in public-key [cryptography](/cryptography).

Modular exponentiation is the remainder when an integer b (the base) is
raised to the power e (the exponent), and divided by a positive integer
m (the modulus); that is, \( c = b^e \mod m \). From the definition of division,
it follows that \( 0 ≤ c < m \).

For example, given b = 5, e = 3 and m = 13, dividing \( 5^3 \) = 125 by 13
leaves a remainder of c = 8.

Modular exponentiation can be performed with a negative exponent e by
finding the [modular multiplicative inverse](/modular-multiplicative-inverse)
d of b modulo m using the
extended Euclidean algorithm. That is:

\( c = b^e \mod m = d^{−e} \mod m \), where \( e < 0 \) and \( b ⋅ d ≡ 1 (\mod m) \)

[Modular exponentiation made easy](https://www.youtube.com/watch?v=tTuWmcikE0Q).

