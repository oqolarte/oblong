---
title: "Chinese Remainder Theorem"
date: 2023-12-21
draft: false
---
[CRT](https://www.youtube.com/watch?v=ru7mWZJlRQg) states that if one knows the remainders of the Euclidean division of
an integer X by several integers, then one can determine uniquely the
remainder of the division of X by the product of these integers, under
the condition that the divisors are relatively prime.

CRT is another way to represent integers of a mod-N world, where the
modulus (N) is the product of a smaller set of moduli, and in which we
represent the X as a sequence of residues, one for each modulus (or the
prime powers that factor N).
This allows us to check details about X, as we want as many moduli as
possible, and have to group all repeated factors in the same modulus.

Different representations
reveal different types of information about the structure of a number.
This is good, because:
- prime factor representation is great for some things, not so for
  others.
- the more representations we know how to use, the better our choices
  will be.

Only two numbers, 0 and 1, have the same representation in all CRT
worlds:

- 0 ≡  (0, 0, ..., 0)(mod anything)
- 1 ≡  (1, 1, ..., 1)(mod anything)
