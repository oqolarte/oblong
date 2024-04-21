---
title: "Discrete Logarithms"
date: 2023-12-20
draft: false
---
Logarithms which all values are integers.

But, not all positive integers have a discrete logarithm.

In ℤ+ (set of positive integers):
- if discrete log exists, it is unique;
- all other logarithm properties still hold

## Uses on cryptography

Some modern [cryptography](/cryptography),
like in [public-key cryptography](/public-key-cryptosystems), relies on no efficient
solution to Discrete Log Problem even though such a solution could be
found tomorrow.

Whether an efficient solution exists is an unknown.
Critical cryptosystems rely on no efficient solution.
An efficient solution would break these systems.
It is suspected that no efficient solution exists.

But, suspected unsolvable problems are occasionally solved.
So, why are we willing to rely on this?
It's really a compromise between the desirable and the possible.
More experts are also looking for practical provably hard problems,
and improving hardware to make known problems useful.
