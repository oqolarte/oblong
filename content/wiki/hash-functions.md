---
title: "Hash Functions"
date: 2023-11-28
draft: false
math: true
---

A hash function is a function that takes an input,
which in [cryptography](/cryptography) is usually the message,
and produces the hash, or the digest of the message.


\( y = h(x) \)

- h is the hash function
- x is the message
- y is the hash, digest, fingerprint


A good hash function satisfies two basic properties:
1. it should be very fast to compute;
2. it should minimize duplication of output values (collisions).

If a hash function has N bits,
then the number of unique digests it can produce is 2^N.

## Cryptographic Hash Function

Cryptographic digest size is typically between 128 to 512 bits.

Note that large hash does not imply secure hash.

### Properties

- Deterministic:
        - Same input produces same output
- Computationally simple and fast
        - only has to be fast and simple enough
- Messages and digests should be uncorrelated
- Preimage and second preimage resistant (or [non-invertible](https://en.wikipedia.org/wiki/One-way_function))
- Collision resistant
        - also implies second preimage resistant
        - but does not imply preimage resistant

## The Random Oracle

The random oracle is the ideal secure hash function.

It's a mathematical function chosen uniformly at random,
i.e., a function mapping each possible query to a (fixed) random
response from its output domain.

Imagine a black box that has an input where we feed in any message.
The box also has an output that spits out the digest of the
complete message.

Now, imagine that the contents of the box behave much like
the mythical being known as
an [oracle](https://www.britannica.com/topic/oracle-religion),
who, in response to each message, produces a truly random
digest subject only to the constraint that any time the same message is
input the same digest is output. To visualize how this could be
achieved, at least in principle, the oracle simply maintains a list of
every message that has ever been input and the digest associated with
it. Then, every time a message is entered, the oracle looks through its
list for that exact message. And if it finds it, it merely echoes out
the associated digest. But if that exact message is not already in the
list, it generates a truly random digest,
and then adds the new message digest pair to its list
before outputting the digest.

Because the value of the digest associated
with a particular message does not depend on that message in any way,
the messages and their digests are uncorrelated, meaning that there is
no pattern that would allow an attacker to take just a digest and define
anything about the message that might have produced it. It also means
that if they want to find a hash collision, the only thing they can
possibly do is carry out a brute force attack and keep trying different
messages until they find one that happens to result in the desired
digest.

### Attacks against Random Oracle

- Preimage attack
        - ...attempts to find a message having a specific digest
        - This kinds of attacks against good hash functions are
          computationally infeasible.
        - Side note: In [math](/math), the image of a function is the
          set of all output values it may produce. The
          [preimage](https://www.khanacademy.org/math/linear-algebra/matrix-transformations/linear-transformations/v/preimage-of-a-set)
          of a given subset B of codomain of *f* is the set of
          all elements of the domain that map to members of *B*.
- Second preimage attack
        - ...are "usually" equal to a preimage attack
        - Preimage and second preimage attack is
        [O](https://en.wikipedia.org/wiki/Big_O_notation)(2^N)
- Hash collision (birthday attack)
        - Exploits the math behind the birthday problem in probability
          theory.
        - The interest lies in finding two messages that happen to have
          the same digest, not caring what the specific digest is.
        - \( O(2^{\frac{N}{2}) \)

## Misc Notes

- If the digest of a message is transmitted along with the message, then
  the integrity of the message can be confirmed, but only in a
  non-adversarial environment.
- An adversary that can change the message can also change the digest to
  match.
- The largest cryptographic hash function that's currently susceptible
  to a brute force preimage attack is closest to 64 bits.
- The difference between a hash collision attack and a second preimage
  attack is that the latter forces the attacker to find a message with a
  specific digest.
