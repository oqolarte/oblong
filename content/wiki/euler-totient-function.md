---
title: "Euler's Totient Function"
date: 2023-12-19
draft: false
math: true
---

Euler's totient function counts the positive integers up to a given
integer n that are relatively prime to n. It is written using the Greek
letter phi, φ. It is the number of integers *k* in the range \( 1 ≦ k ≦ n \)
for which the \( gcd(n,k) \) is equal to 1.

E.g., totiatives of n = 9 are 1, 2, 4, 5, 7, and 8, which are all
relatively prime. Therefore, \( φ(9) = 6 \)

Totient of a prime, \( p \) is simply \( p - 1 \)

E.g.:

\[
\begin{aligned}
ϕ(89) = 88 \\
ϕ(97) = 96
\end{aligned}
\]

Totient of a product of primes is the product of one less than each
prime.

E.g.:

\[
\begin{aligned}
N = 89 · 97 = 8633 \\
ϕ(8633) = 88 · 96 = 8448
\end{aligned}
\]

E.g.: N = product of first ten primes (p < 30)

ϕ (6,469,693,230) = 1,106,472,960

To prove that the totient function formula is correct:
- Prove \( ϕ(p^k) = (N/p)(p-1) \)
- Prove \( ϕ(a·b) = ϕ(a)·ϕ(b) \)  IF \( gcd(a,b) = 1 \)

It’s also multiplicative in the usual number-theoretic sense:
if m and n are relatively prime, \( φ(mn) = φ(m) φ(n) \)
