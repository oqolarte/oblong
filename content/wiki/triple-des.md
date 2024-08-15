---
title: "Triple-DES"
date: 2024-01-15
draft: false
math: true
---
Since [double-DES](/double-des) is not secure enough, consider Triple-
DES with three DES cyphers applied in sequence.

3DES is known as a block cipher because of the way it converts plaintext
into ciphertext in “blocks.” Its origins trace back to the Data
Encryption Standard (DES), which was developed in the early 1970s. DES
was one of the earliest symmetric encryption algorithms that generated
64-bit keys. A bit is the smallest unit of data measurement on a
[computer](/computer). Triple DES generates keys that are 192 bits, or
three times as long. Despite the longer keys, many organizations are
moving away from using Triple DES due to limitations on the amount of
data that can be encrypted. However, Triple DES is likely to remain in
use for backwards compatibility purposes.

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
