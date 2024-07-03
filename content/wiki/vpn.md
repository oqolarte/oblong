---
title: "Virtual Private Network (VPN)"
date: 2024-07-02
draft: false
math: false
---

VPN is [network](/network) security service that changes your public IP address and
hides your virtual location so that you can
[keep your data private](/privacy) when you are using a public network
like the [internet](/internet).
VPNs provide a server that acts as a gateway between a computer and the
internet. This server creates a path similar to a virtual tunnel that
hides the computer’s IP address and encrypts the data in transit to the
internet.

VPNs also [encrypt](/cryptography) your data as it travels across the
internet to preserve confidentiality. A VPN service performs
encapsulation on your data in transit. Encapsulation is a process
performed by a VPN service that protects your data by wrapping sensitive
data in other data packets.

## VPN Protocols

VPN protocols determine how the secure network tunnel is formed.
Similar to network protocols, it’s a set of rules or instructions that
will determine how data moves between endpoints (i.e., devices connected
on a network, such as computers, mobile devices, and servers).

### Remote access and site-to-site VPNs

Individual users use remote access VPNs to establish a connection
between a personal device and a VPN server. Remote access VPNs encrypt
data sent or received through a personal device. The connection between
the user and the remote access VPN is established through the internet.

Enterprises use site-to-site VPNs mostly to extend their network to
other networks and locations. This is useful for
organizations that have many offices across the globe. IPSec is commonly
used in site-to-site VPNs to create an encrypted tunnel between the
primary network and the remote network. One downside of site-to-site
VPNs is how complex they can be to configure and manage compared to
remote VPNs.

### WireGuard

WireGuard is a high-speed VPN protocol, with advanced encryption, to
protect users when they are accessing the internet. It’s designed to be
simple to set up and maintain. WireGuard can be used for both
site-to-site connection and client-server connections. WireGuard is
relatively newer than IPSec, and is used by many people due to the fact
that its download speed is enhanced by using fewer lines of code.
WireGuard is also open source, which makes it easier for users to deploy
and debug. This protocol is useful for processes that require faster
download speeds, such as streaming video content or downloading large
files.

### IPSec VPN

IPSec is another VPN protocol that may be used to set up VPNs. Most VPN
providers use IPSec to encrypt and authenticate data packets in order to
establish secure, encrypted connections. Since IPSec is one of the
earlier VPN protocols, many operating systems support IPSec from VPN
providers.

Although IPSec and WireGuard are both VPN protocols, IPSec is older and
more complex than WireGuard. Some clients may prefer IPSec due to its
longer history of use, extensive security testing, and widespread
adoption. However, others may prefer WireGuard because of its potential
for better performance and simpler configuration.
