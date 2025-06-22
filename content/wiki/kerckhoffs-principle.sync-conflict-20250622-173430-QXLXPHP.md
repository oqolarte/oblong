---
title: "Kerckhoffs' Principle"
date: 2023-11-22
draft: false
---

[Security](/security) through obscurity is bad.

In the world of [cryptography](/cryptography), a [cipher](/ciphers) must
be proven to be unbreakable before claiming that it is secure. According
to Kerchoff’s principle, cryptography should be designed in such a way
that all the details of an algorithm---except for the private
key---should be knowable without sacrificing its security. For example,
you can access all the details about how [AES](/aes) encryption works
online and yet it is still unbreakable.

Also rephrased by Claude Shannon as:

> One ought to design systems under the assumption that the enemy will
> immediately gain full familiarity with them.


- System should not have complex rules.
- Algorithms shouldn't need to be secret.
    - Design plans, source codes, when made publicly available, allows more eyes to audit it.
- Security should rely on simple keys:
    - Keys should be easily transmittable;
    - Keys should be easily replaced if needed.
