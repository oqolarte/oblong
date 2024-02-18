---
title: "Double-DES"
date: 2024-01-15
draft: false
math: true
---

To make brute force attack infeasible as in [DES](/des),
we need to increase the key length so that
the attacker's effort grows exponentially with the key length.

Double-DES has 2 encryption---and likewise, decryption---stages and two
different keys (K1, K2):

\[
\begin{aligned}
C = Enc(K_2, Enc(K_1, P)) \\
P = Dec(K_1, Dec(K_2, C))
\end{aligned}
\]

where Enc is encryption, Dec is decryption, P is plaintext, and C is
ciphertext.

Two keys is 112 bits (56 x 2) and can provide 112 bits of entropy.

## Meet in the middle attack

Meet-in-the-middle (MITM) attack can be used against any double encryption
approach, regardless of the cipher algorithm that was applied twice.

The general idea of the attack is as follows:

1. Pre-computation step: attacker encrypts the plaintext with all
   posible keys for the first encryption (with K1). These results are
   stored in a table. Since K1 is 56-bits long, there are \( 2^{56} \) possible
   keys, and hence \( 2^{56} \) possible intermediate values.
2. Brute-force step: attacker takes the ciphertext and decrypts it using
   all possible keys for the third encryption with K3. For each
   decrypted output, the attacker checks if the result is in the
   pre-computation table (step 1).
3. Finding K2: If a match is found the attacker knows the values of K1
   and K3. Then, using the corresponding intermediate value (the result
   of \( Enc(K_1, P)) \), they can try to find K2 by performing a brute-force
   search on the second encryption layer.

The storage requirement for MITM attack comes from pre-computation step,
which is \( O(2^{56}) \), which reflects the number of entries in the table,
not the actual bit size of the storage.

Without a known plaintext-ciphertext pair, MITM attacker would have to
brute force their analysis. Since each key is 56 bits long and there are
3 keys, the total keyspace is \( 2^{56} \times 2^{56} \times 2^{56} = 2^{168} \).

Double-DES with just a naive way of using multiple DES ciphers with
different keys is not secure enough, because the meet-in-the-middle
attack exploits the vulnerability of double encryption approaches which
effectively lowers the attack complexity to find the key.

Since double-DES is not secure enough, [triple-DES](/triple-des) was made.
