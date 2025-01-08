---
title: "Pyramid of pain"
date: 2024-12-25
draft: false
math: false
---

Security researcher David J. Bianco created the concept of
[Pyramid of Pain](https://detect-respond.blogspot.com/2013/03/the-pyramid-of-pain.html)
to help other security professionals determine what the
"level" of an IoC is and respond accordingly.

![Pyramid of Pain; from bottom up (i.e., from trivial to tough): hash values, IP addresses, domain names, network/host artifacts, tools, TTPs](/image/pyramid-of-pain.png)

Each type of [indicators of compromise](/indicators-of-compromise) (IoC) is separated into levels of difficulty. These levels
represent the “pain” an attacker faces when security teams
block the activity associated with the IoC. For
example, blocking an IP address associated with a malicious actor is
labeled as easy because malicious actors can easily use different IP
addresses to work around this and continue with their malicious efforts.
If security teams are able to block the IoCs located at the top of the
pyramid, the more difficult it becomes for attackers to continue their
attacks. Here’s a breakdown of the different types of IoCs in the Pyramid:

- [**Hash values**](/hash-values): Hashes that correspond to known
  malicious files. These are often used to provide unique references to
  specific samples of malware or to files involved in an intrusion.
- [**IP addresses**](/ip-address): An internet protocol address like 192.168.1.1
- [**Domain names**](/domain-names): A web address such as www.example.org
- **Network artifacts**: Observable evidence created by malicious actors
  on a [network](/network). For example, information found in network
  protocols such as User-Agent strings.
- **Host artifacts**: Observable evidence created by malicious actors on
  a host.
- **Tools:** Software that’s used by a malicious actor to achieve their
  goal. For example, attackers can use password cracking tools like John
  the Ripper to perform password attacks to gain access into an account.
- **Tactics, techniques, and procedures (TTPs)**: This is the behavior
  of a malicious actor. Tactics refer to the high-level overview of the
  behavior. Techniques provide detailed descriptions of the behavior
  relating to the tactic. Procedures are highly detailed descriptions of
  the technique. TTPs are the hardest to detect.



