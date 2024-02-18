---
title: "Modular Arithmetic"
date: 2023-12-01
draft: false
---

Modular arithmetic ("[wheel math](https://www.youtube.com/watch?v=lJ3CD9M3nEQ)") is a system of arithmetic for integers,
where numbers "wrap around" when reaching a certain value,
called modulus.

## Basic Concepts

n = q * d + r  
where:
- n is dividend
- d is divisor ("modulus")
- q is quotient
- r is remainder ("residue")

By convention, we can choose q such that 0 <= r < d

Alternatively, "*a* mod *n*" is the remainder when *a* is divided by *n*
(where *n* is a positive integer called **modulus**)

If a = q * n + r, for any integer q,
r = a mod n

If (a mod n) = (b mod n),
a and b are congruent modulo n
and a ≡ b (mod n)

Given a modulus n, there are infinite numbers that are congruent to each
other, as there are infinite number of possible integers that provide
the same remainder when divided by n. For example:

... ≡ -9 ≡ -2 ≡ 5 ≡ 12 ≡ 19 ... (mod 7)

(mod n) operator maps all integers into the set of integers between 0 and n-1.
These integers that are between zero and n-1 are called residue classes 
