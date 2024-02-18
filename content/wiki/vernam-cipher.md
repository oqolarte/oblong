---
title: "The Vernam Cipher"
date: 2023-11-22
draft: false
---

[The only one perfectly secure cryptosystem known.](https://www.pro-technix.com/information/crypto/pages/vernam_base.html)
(TODO: Go through the linked articles in the link above.)

For sending highly secure or confidential information over non-secure
channels (e.g., telephone, radio, mail), Vernam [cipher](/ciphers) is the only
choice.

## Usage

1. Obtain 2 copies of pad (AKA the key), which is a block of truly
   random data. If data on pad is not truly random, security of pad is
   compromised. One copy is kept by each user. (Note that the more
   copies of a given pad, the more likely it may be captured, the more
   likely it is compromised.)
2. Pads must be exchanged via a secure channel.
3. Pads must only be used once.
4. Fastest method is using a computer:
        1. Keep the pad on an external device (e.g., USB, CD, or DVD)
           and destroy it completely once used.
        2. Never store pads on computer's hard drive as this might be
           retrieved/reconstructed even when deleted.
        3. Don't use networked computer during encryption/decryption
           because of possible eavesdropping.
5. Each character of the message is XOR'd ([exclusive bitwise](/xor)) with each
   of the characters of the pad to produce the ciphertext, in sequence.

## Security of the Vernam cipher

The [security](/security) of the cipher relies on:
- truly random data;
- must never be used more than once; and
- must be kept secure.

## Truly Random Data

An event sequence can be said to be truly random if it is impossible to
predict the next event in the sequence even if the entire state of the
generating process up to that point is known. Any deterministic process,
such as running software on a [computer](/computer), can never produce
truly random numbers. The next event in a computer is completely
predictable given the current machine/network/IO state.

Don't rely on software alone for generating truly random data.
It must also be gathered in conjunction with hardware (like Geiger
counters or Zener diodes) with truly
non-deterministic nature like [radioactive decay](https://en.wikipedia.org/wiki/Radioactive_decay) and [quantum tunneling](https://en.wikipedia.org/wiki/Quantum_tunnelling).
