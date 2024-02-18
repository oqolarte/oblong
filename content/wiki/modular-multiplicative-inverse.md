---
title: "Modular Multiplicative Inverse"
date: 2023-12-11
draft: false
---

## What is multiplicative inverse

- Division isn't defined in [modular arithmetic](/modular-arithmetic), but multiplicative inverses are.
        - Dividing by x = multiplying by reciprocal of x
- Product of x and its multiplicative inverse is 1
- A modular multiplicative inverse of an integer *a* is an integer *x* such
  that the product ax is congruent to 1 with respect to the modulus
  m.
        - `ax ≡ 1 (mod m)`

## When a multiplicative inverse exists

- Being relatively prime to the modulus is sufficient to have a
  multiplicative inverse

## Euclidean algorithm to find GCD

- Oldest known algorithm
- gcd(x,y) = gcd(y, x%y) (x > y)

For example, determine if 2017 and 1024 are relatively prime.

```
gcd(2017, 1024)
gcd(1024, 993)
gcd(993, 31)
gcd(31, 1) = 1

Yes, 2017 and 1024 are relatively prime.
```

### How efficient the Euclidean algorithm is

Every two iterations of the algorithm, the larger argument is reduced by
at least a factor of two. The furthest is when we get to a GCD
of one. Thus, a limit on the number of iterations is on the order of the
base two logarithm of the larger of the two numbers or `O(log(x))`.
The worst case performance
for the Euclidean Algorithm is generally twice the number of bits in the
modulus, but it almost always does better.

Euclidean algorithm is used to determine whether two numbers are
relatively prime, and this has applications in [cryptography](/cryptography).

Moreover, there's an [extended Euclidean algorithm](https://en.wikipedia.org/wiki/Extended_Euclidean_algorithm).
