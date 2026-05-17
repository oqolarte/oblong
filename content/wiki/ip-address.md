---
title: "IP address"
date: 2024-12-25
draft: false
math: false
---

An IP ([internet](/internet) protocol) address is used to identify any device connected to a [network](/network).

{{< toc >}}

## What is

IP address can be used as a way to identify a host on a network for a
period of time.

An IP address is a set of numbers divided into four octets.

```
192.168.1.1
 |   |  | |
 |   |  | ∟--- octet #4
 |   |  ∟----- octet #3
 |   ∟-------- octet #2
 ∟------------ octet #1
```

## Headers of packets using IP

A packet using this protocol will have a set of headers that contain
additional pieces of information to the data that is being sent across a
network.

Time to live
: sets an expiry timer for the packet to not clog up your network if it never manages to reach a host or escape!

checksum
: provides integrity (i.e., assurance that data has not been tampered with) checking for protocols such as TCP/IP. If any data is changed, this value will be different from what was expected and therefore corrupt.

source address
: The IP address of the device that the packet is being sent from so that data knows where to return to.

destination address
: The device's IP address the packet is being sent to so that data knows where to travel next.

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
