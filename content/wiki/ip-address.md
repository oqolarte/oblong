---
title: "IP address"
date: 2024-12-25
draft: false
math: false
---
An IP ([internet](/internet) protocol) address is used to identify any device connected to a [network](/network).

{{< toc >}}

## As an IoC

IP addresses is one of the [indicators of compromise](/indicators-of-compromise) labeled in the [pyramid of pain](/pyramid-of-pain).

From a defense standpoint, knowledge of the IP addresses an adversary
uses can be valuable. A common defense tactic is to block, drop, or deny
inbound requests from IP addresses on your external
[firewall](/firewall). This tactic is often not good enough as it’s
trivial for an experienced [adversary](/threat-actor) to recover simply
by using a new public IP address.

One of the ways an adversary can make it challenging to successfully carry out IP blocking is by using Fast Flux.

### Fast Flux

Fast Flux is a DNS technique used by botnets to hide phishing, web
proxying, malware delivery, and malware communication activities behind
compromised hosts acting as proxies. The purpose of using the Fast Flux
network is to make the communication between malware and its command and
control server (C&C) challenging to be discovered by security
professionals.

So, the primary concept of a Fast Flux network is having multiple IP
addresses associated with a domain name, which is constantly changing.

For more info on Fast Flux, read this article from Palo Alto Networks:
[Fast Flux 101: How Cybercriminals Improve the Resilience of Their Infrastructure to Evade Detection and Law Enforcement Takedowns](https://unit42.paloaltonetworks.com/fast-flux-101/)
