---
title: "Domain names (internet)"
date: 2025-01-08
draft: false
math: false
---

In the context of [internet](/internet), domain names are the equivalent
strings of text of an [IP address](/ip-address). Can contain top-level
domain (TLD), like `example.org`, or a sub-domain followed by a TLD,
like `blog.example.org`.

## As an Indicator of Compromise (IoC)

As an [IoC](/indicators-of-compromise), domain names can be a little
more of a pain for the attacker to change as they would most likely need
to purchase the domain, register it and modify DNS records.
Unfortunately for defenders, many DNS providers have loose standards and
provide APIs to make it even easier for the attacker to change the
domain.

Attackers can trick someone into clicking a seemingly legitemate website
through a [punycode attack](https://www.jamf.com/blog/punycode-attacks/),
which is a way of converting words that cannot be written in ASCII, into
a Unicode ASCII encoding.
As discussed by Chinese researcher in the post,
[Phishing with Unicode Domains](https://www.xudongz.com/blog/2017/idn-phishing/),"
punycode is used to register domain names with non-English characters,
which have been exploited by attackers to employ a [homograph attack](https://en.wikipedia.org/wiki/IDN_homograph_attack).

Adding a layer to this, attackers might also use URL shorteners.
**You can see the actual website the shortened link is redirecting you to by appending "+" to it.**
