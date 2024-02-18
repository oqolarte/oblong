---
title: "Triple-DES"
date: 2024-01-15
draft: false
math: true
---
Since [double-DES](/double-des) is not secure enough, consider Triple-
DES with three DES cyphers applied in sequence.

The first DES uses K1, the second DES uses K2, and the third DES uses
K3. Triple-DES is standardized and is also called the
triple data encryption algorithm (triple-DEA):

\[
\begin{aligned}
C = Enc(K_3, Dec(K_2, Enc(K_1, P))) \\
P = Dec(K_1, Enc(K_2, Dec(K_3, C)))
\end{aligned}
\]

It is still vulnerable to meet-in-the-middle attack.
