---
title: "Firewall (network)"
date: 2024-07-02
draft: false
math: false
---

Firewall is a network security device that monitors traffic to and from
your [network](/network).

{{< toc >}}

## Filtering

A firewall can use **port filtering**, which blocks or allows certain
port numbers to limit unwanted communication. For example, it could have
a rule that only allows communications on port 443 for HTTPS or port 25
for email and blocks everything else.

![Firewall topology in a network](/image/firewall.png)

### Ingress filtering

Ingress filtering is the practice of monitoring, controlling, and
restricting traffic entering a network to ensure only legitimate traffic
enters, and unauthorised or malicious traffic does not.

### Egress filtering

Egress filtering is the opposite of ingress, in that it only lets
legitimate traffic to leave the network, and prevents unauthorised and
malicious traffic from doing so. The main goal is to protect other
organizations' networks by preventing malware spread.

## Types

A **hardware firewall** is considered the most basic way to defend
against threats to a network. A hardware firewall inspects each data
packet before it's allowed to enter the network.

A **software firewall** performs the same functions as a hardware
firewall, but it's not a physical device. Instead, it's a software
program installed on a computer or on a server. If the software firewall
is installed on a computer, it will analyze all the traffic received by
that computer. If the software firewall is installed on a server, it
will protect all the devices connected to the server. A software
firewall typically costs less than purchasing a separate physical
device, and it doesn't take up any extra space. But because it is a
software program, it will add some processing burden to the individual
devices.

**Cloud-based firewalls** are software firewalls hosted by a cloud
service provider. Organizations can configure the firewall rules on the
cloud service provider's interface, and the firewall will perform
[security](/security) operations on all incoming traffic before it
reaches the organization’s onsite network.

## States of firewall

The terms "stateful" and "stateless" refer to how the firewall operates.

**Stateful** refers to a class of firewall that keeps track of
information passing through it and proactively filters out threats. A
stateful firewall analyzes network traffic for characteristics and
behavior that appear suspicious and stops them from entering the
network.

**Stateless** refers to a class of firewall that operates based on
predefined rules and does not keep track of information from data
packets. A stateless firewall only acts according to preconfigured rules
set by the firewall administrator. The rules programmed by the firewall
administrator tell the device what to accept and what to reject. A
stateless firewall doesn't store analyzed information. It also doesn't
discover suspicious trends like a stateful firewall does. For this
reason, stateless firewalls are considered less secure than stateful
firewalls

**Next generation firewall** (NGFW) not only provides
stateful inspection of incoming and outgoing traffic,
it also performs more
in-depth security functions like
deep packet inspection and intrusion protection.
