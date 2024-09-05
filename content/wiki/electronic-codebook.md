---
title: "Electronic codebook (ECB)"
date: 2024-01-22
draft: false
math: true
---

ECB is a simple block cipher mode that uses a "code book" including the
table for mapping between plaintext and ciphertext for encryption and
decryption.

ECB uses the same raw key over multiple blocks.

For block i:

\[
\begin{aligned}
Ci = Enc(K, P_i) \\
Pi = Dec(K, C_i)
\end{aligned}
\]

## ECB Security

If the message is highly structured and have patterns,
[cryptanalysts](/cryptanalysis) may use these to get the plaintext and/or
interfere with the ciphertext.

Since ECB uses the same raw key over multiple blocks,
patterns in long plaintext carry over to the ciphertext.
Thus, ECB must not be used for encrypting large data.
