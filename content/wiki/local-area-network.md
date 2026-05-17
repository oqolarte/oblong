---
title: "Notes on Local area network (LAN)"
date: 2026-05-17
draft: false
math: false
---

{{< toc >}}

## LAN Topologies

LAN topology refers to the design of the [network](/network).

### Star topology

Individual devices are connected via a central networking device such as
a switch or hub. Common today for its reliability and scalability,
despite the cost.

Cost comes from:
- more cabling
- more dedicate netowrking equipment
- more maintenance required

### Bus topology

This connection relies on a single one known as backbone cable. Prone to
becoming slow and bottlenecked if devices within the topology are
simultaneously requesting data.

It is more cost-efficient and easier to set up. But there's little
redundancy in case of failures.

### Ring topology

Devices are connected to each other to form a loop, meaning there is
little cabling required and less dependence on dedicated hardware.

A ring topology works by sending data across the loop until it reaches
the destined device, using other devices along the loop to forward the
data. Interestingly, a device will only send received data from another
device in this topology if it does not have any to send itself. If the
device happens to have data to send, it will send its own data first
before sending data from another device.
