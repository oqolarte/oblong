---
title: "Key Distribution and Management"
date: 2023-11-22
draft: false
---

Secure distribution of key material does not scale well to large
networks. And many systems have been broken in because of poor key
management/distribution.

- Pairwise keys provide greatest security;
        - but only if the keys are properly managed.
        - This requires N (N - 1) / 2 = ~N^2 keys
- Modern networks have millions of keyed nodes.
- Common keys (say, shared among large group of users) are more manageable, but insecure.
        - The larger the group, the more valuable the key compromise.
        - Easier to compromise (more users means increased chance that
          someone in the group becomes careless)
        - More difficult to detect a compromise.

In symmetric cryptography, Alice and Bob must establish a shared
*secret* key.

[Asymmetric cryptography](/public-key-cryptosystems) addresses the key
distribution problem by having valid/authenticated public keys between
Alice and Bob.

## Key Distribution Approaches

1. Alice can select a key and physically deliver it to Bob
2. Trent can physically deliver the key to Alice and Bob

In the two examples above, physical distribution works well but limits
applications of distribution.

3. If they communicated previously, Alice and Bob can use a previous key
   to encrypt and communicate the new key.
4. If Alice and Bob have secure [communications](/communication) with
   Trent, then Trent can deliver the key.

## Key Hierarchy

Session key:
- Temporary; used for one or few sessions
- Used between users for data encryption

Master key:
- Encrypt session keys
- Shared between user and key distribution center
- Widely adopted in end-to-end encryption

In case a malicious attacker who does not have the master key implements a passive ciphertext-only attack, these will still be secret:
- **nonce** created by Bob (N2), because Bob's response is encrypted with
  the master key, and function F he used is a one-way function
- **session keys**, because Bob's response containing these is encrypted
  with master key, and then Alice uses the session keys to encrypt f(N2) as an
  acknowledgement; the latter encryption is required to prevent key
  breach.

## Public-Key Authority

- Builds on public directory securely registering {IDi, Ki}
- Securely distribute keys from directory
- Requires users to know authority's K_AU_
- Require real-time access to authority

The use of public key authority has some drawbacks. The public key
authority could be a bottleneck in the system because a user must
contact and request to the authority for public key every time that it
wants to communicate with anybody. Also, there is no mechanism to ensure
the integrity of the identities, and public key is maintained by the
authority directory.

These challenges motivated the development of public key certificates.

## Public-Key Certificate and Public-Key Infrastructure (PKI)

1. Any user can read a certificate
2. Any user can verify the certificate
3. Only Certificate Authority (CA) can create/update certificates.
4. Any user can verify the currency/validity of the certificate.

PKI is the system comprising hardware, software, people policies, and
procedures needed to create, manage, store, distribute, and revoke
digital certificates.
