---
title: "Simultaneous Authentication of Equals"
date: 2024-07-02
draft: false
math: false
---

In [cryptography](/cryptography), Simultaneous Authentication of Equals
(SAE) is a password-based authentication and password-authenticated key
agreement method.

SAE is a variant of the Dragonfly Key Exchange, based on
[Diffie–Hellman key exchange](/diffie-hellman-key-exchange)
using finite cyclic groups
which can be a primary cyclic group or an elliptic curve. The problem of
using Diffie–Hellman key exchange is that it does not have an
authentication mechanism. So the resulting key is influenced by a
pre-shared key and the MAC addresses of both peers to solve the
authentication problem.
