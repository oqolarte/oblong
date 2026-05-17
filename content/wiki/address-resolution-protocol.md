---
title: "Address Resolution Protocol (ARP)"
date: 2026-05-17
draft: false
math: false
---

ARP is the [technology](/technology) that is responsible for allowing
devices to identify themselves on a [network](/network).

Simply, ARP allows a device to associate its [MAC address](/MAC-address)
with an [IP address](/ip-address) on the network. Each device on a
network will keep a log of the MAC addresses associated with other
devices.

{{< toc >}}

## How does it work

Each device within a network has a ledger to store information on, which
is called a cache. In the context of ARP, this cache stores the
identifiers of other devices on the network.

In order to map these two identifiers together (IP address and MAC
address), ARP sends two types of messages:

1. ARP Request
1. ARP Reply

When an ARP request is sent, a message is broadcasted on the network to
other devices asking, "What is the MAC address that owns this IP
address?" When the other devices receive that message, they will only
respond if they own that IP address and will send an ARP reply with its
MAC address. The requesting device can now remember this mapping and
store it in its cache for future use.
