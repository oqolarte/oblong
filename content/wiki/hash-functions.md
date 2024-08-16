---
title: "Hash Functions"
date: 2023-11-28
draft: false
math: true
---

A hash function is a function that takes an input,
which in [cryptography](/cryptography) is usually the message,
and produces the hash, or the digest of the message,
which can't be decrypted.

Hash functions are important [security controls](/security-controls).
Hashing is widely used for authentication and **non-repudiation**, the
concept that the authenticity of information can’t be denied.


\( y = h(x) \)

- h is the hash function
- x is the message
- y is the hash, digest, fingerprint


A good hash function satisfies two basic properties:
1. it should be very fast to compute;
2. it should minimize duplication of output values (collisions).

If a hash function has N bits,
then the number of unique digests it can produce is 2^N.

## Origins of hashing

Hash functions were originally created as a
[way to quickly search for data](/data-management).
Since the beginning, these algorithms have been
designed to represent data of any size as small, fixed-size values, or
digests. Using a hash table, which is a data structure that's used to
store and reference hash values, these small values became a more secure
and efficient way for [computers](/computer) to reference data.

One of the earliest hash functions is Message Digest 5, more commonly
known as MD5. Professor Ronald Rivest of the Massachusetts Institute of
Technology (MIT) developed MD5 in the early 1990s as a way to verify
that a file sent over a network matched its source file.

Whether it’s used to convert a single email or the source code of an
application, MD5 works by converting data into a 128-bit value. In a
computer, bits represent user input in a way that computers can
interpret. In a hash table, this appears as a string of 32 characters.
Altering anything in the source file generates an entirely new hash
value.

Generally, the longer the hash value, the more secure it is. It wasn’t
long after MD5's creation that security practitioners discovered 128-bit
digests resulted in a major vulnerability.

### Hash collisions

One of the flaws in MD5 happens to be a characteristic of all hash
functions. Hash algorithms map any input, regardless of its length, into
a fixed-size value of letters and numbers. Although there are an
infinite amount of possible inputs, there’s only a finite set of
available outputs.

MD5 values are limited to 32 characters in length. Due to the limited
output size, the algorithm is considered to be vulnerable to **hash
collision**, an instance when different inputs produce the same hash
value. Because hashes are used for authentication, a hash collision is
similar to copying someone’s identity. Attackers can carry out collision
attacks to fraudulently impersonate authentic data.

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

## Next-generation hashing

To avoid the risk of hash collisions, functions that generated longer
values were needed. MD5's shortcomings gave way to a new group of
functions known as the Secure Hashing Algorithms, or SHAs.

The National Institute of Standards and Technology (NIST) approves each
of these algorithms. Numbers besides each SHA function indicate the size
of its hash value in bits. Except for SHA-1, which produces a 160-bit
digest, these algorithms are considered to be collision-resistant.
However, that doesn’t make them invulnerable to other exploits.

Five functions make up the SHA family of algorithms:

- SHA-1
- SHA-224
- SHA-256
- SHA-384
- SHA-512

## Secure password storage

Passwords are typically stored in a database where they are mapped to a
username. The server receives a request for authentication that contains
the credentials supplied by the user. It then looks up the username in
the database and compares it with the password that was provided and
verifies that it matches before granting them access.

This is a safe system unless an attacker gains access to the user
database. If passwords are stored in plaintext, then an attacker can
steal that information and use it to access company resources. Hashing
adds an additional layer of [security](/security).
Because hash values can't be
reversed, an attacker would not be able to steal someone's login
credentials if they managed to gain access to the database.

### Rainbow tables

A **rainbow table** is a file of pre-generated hash values and their
associated plaintext. They’re like dictionaries of weak passwords.
Attackers capable of obtaining an organization’s password database can
use a rainbow table to compare them against all possible values.

## Adding some “salt”

Functions with larger digests are less vulnerable to collision and
rainbow table attacks. But in reality, no security control is perfect.

Salting is an additional safeguard that's used to strengthen hash
functions. A salt is a random string of characters that's added to data
before it's hashed. The additional characters produce a more unique hash
value, making salted data resilient to rainbow table attacks.

For example, a database containing passwords might have several hashed
entries for the password "password." If those passwords were all salted,
each entry would be completely different. That means an attacker using a
rainbow table would be unable to find matching values for "password" in
the database.

For this reason, salting has become increasingly common when storing
passwords and other types of sensitive data. The length and uniqueness
of a salt is important. Similar to hash values, the longer and more
complex a salt is, the harder it is to crack.
## The Random Oracle

The random oracle is the ideal secure hash function.

It's a mathematical function chosen uniformly at random, i.e., a
function mapping each possible query to a (fixed) random response from
its output domain.

Imagine a black box that has an input where we feed in any message. The
box also has an output that spits out the digest of the complete
message.

Now, imagine that the contents of the box behave much like the mythical
being known as an
[oracle](https://www.britannica.com/topic/oracle-religion), who, in
response to each message, produces a truly random digest subject only to
the constraint that any time the same message is input the same digest
is output. To visualize how this could be achieved, at least in
principle, the oracle simply maintains a list of every message that has
ever been input and the digest associated with it. Then, every time a
message is entered, the oracle looks through its list for that exact
message. And if it finds it, it merely echoes out the associated digest.
But if that exact message is not already in the list, it generates a
truly random digest, and then adds the new message digest pair to its
list before outputting the digest.

Because the value of the digest associated with a particular message
does not depend on that message in any way, the messages and their
digests are uncorrelated, meaning that there is no pattern that would
allow an attacker to take just a digest and define anything about the
message that might have produced it. It also means that if they want to
find a hash collision, the only thing they can possibly do is carry out
a brute force attack and keep trying different messages until they find
one that happens to result in the desired digest.

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
