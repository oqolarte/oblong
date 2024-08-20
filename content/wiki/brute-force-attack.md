---
title: "Brute force attack (cybersecurity)"
date: 2024-07-11
draft: false
math: false
---

A brute force attack is a trial-and-error process of discovering
[private information](/privacy). There are different types of brute
force attacks that [malicious actors](/threat-actor) use to guess passwords, including:

- **Simple brute force attacks**. When attackers try to guess a user's
  login credentials, it’s considered a simple brute force attack. They
  might do this by entering any combination of usernames and passwords
  that they can think of until they find the one that works.
- **Dictionary attacks** use a list of commonly used passwords and
  stolen credentials from previous breaches to access a system. These
  are called “dictionary” attacks because attackers originally used a
  list of words from the dictionary to guess the passwords, before
  complex password rules became a [common security practice](/security).
- **Reverse brute force attacks** are similar to dictionary attacks,
  except they start with a single credential and try it in various
  systems until a match is found.
- **Credential stuffing** is a tactic in which attackers use stolen
  login credentials from previous data breaches to access user accounts
  at another organization. A specialized type of credential stuffing is
  called *pass the hash*. These attacks reuse stolen, unsalted hashed
  credentials to trick an authentication system into creating a new
  authenticated user session on the [network](/network).

**Note**: Besides access credentials, encrypted information can
sometimes be brute forced using a technique known as
*exhaustive key search*.

Using brute force to access a system can be a tedious and time consuming
process, especially when it’s done manually. There are a range of tools
attackers use to conduct their attacks.

## Tools of the trade

There are so many combinations that can be used to create a single set of login credentials. The number of characters, letters, and numbers that can be mixed together is truly incredible. When done manually, it could take someone years to try every possible combination.

Instead of dedicating the time to do this, attackers often use software to do the guess work for them. These are some common brute forcing tools:

- Aircrack-ng
- Hashcat
- John the Ripper
- Ophcrack
- THC Hydra

## Prevention measures

Organizations defend against brute force attacks with a combination of
technical and managerial controls. Each make cracking defense systems
through brute force less likely:

- [Hashing and salting](/hash-functions)
- Multi-factor authentication (MFA)
- CAPTCHA
- Password policies
