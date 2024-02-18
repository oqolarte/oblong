---
title: "Counter mode (CTR)"
date: 2024-01-22
draft: false
---
CTR does not have explicit chaining or feedback between blocks. Rather,
the dependency comes from what is already built in on the counter,
compared to [OFB](/output-feedback), in which the random bit generation
relied on the feedback from the cipher function output from the previous
block.

The counter T<sub>i</sub> is b bits long, equal to the bit length
supported by the encryption function.

Like in OFB, CTR also has random bit generations independent to the
data. This helps with the key protection. 

Because there's no chaining, CTR mode supports parallel processing in
encryption. Therefore, CTR mode can preprocess the values offline. For
example, it can preprocess the output values way before the time to
encrypt. Furthermore, the counter mode enables random access to
encrypted data blocks. It is important to protect the counter values,
T<sub>i</sub>, for [security](/security).

If the counter values are protected against the attacker, then counter
mode is proven to be as good as the other modes. Hence, the counter
values must not be reused. Typically, the counter is initialized to some
value and then incremented by one for each subsequent block.

All counter values, across all messages, must be unique. In fact, the
standardization requires that the counter value changes for every
plaintext that the counter mode uses. 

CTR mode is widely used thanks to its simplicity. For example, CTR mode
is used with applications in asynchronous transfer mode (ATM), network
security, and IP Security (IPSec).
