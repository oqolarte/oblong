---
title: "Cipher Feedback (CFB)"
date: 2024-01-22
draft: false
---
To generate the pseudo-random bits using the encryption function,
CFB chaining receives the input from the previous ciphertext and hence,
it's named cipher feedback mode.

Encryption function does not take the data plaintext as input.
The encryption function is rather used to generate random bits.

The random bits,
which is the output of the encryption function is then XOR with the plaintext.

The chaining between the blocks come from using the ciphertext as a feedback
to the following block encryption function.
