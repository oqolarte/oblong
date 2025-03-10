---
title: "Subnetworks"
date: 2024-07-03
draft: false
math: false
---

Subnetting is the subdivision of a network into logical groups called
subnets. It works like a [network](/network) inside a network.
Subnetting divides up a network address range into smaller subnets
within the network. These smaller subnets form based on the
[IP addresses](/ip-address) and network mask of the devices on the network.
Subnetting creates a network of devices to function as their own
network. This makes the network more efficient and can also be used to
create [security zones](/security-zone).

{{< toc >}}

## Classless Inter-Domain Routing notation for subnetting

Classless Inter-Domain Routing (CIDR) is a method of assigning subnet
masks to IP addresses to create a subnet.

Classless addressing replaces classful addressing. Classful addressing
was used in the 1980s as a system of grouping IP addresses into classes
(Class A to Class E). Each class included a limited number of IP
addresses, which were depleted as the number of devices connecting to
the internet outgrew the classful range in the 1990s. Classless CIDR
addressing expanded the number of available IPv4 addresses.

CIDR allows [cybersecurity](/cybersecurity) professionals to segment
classful networks into smaller chunks. CIDR IP addresses are formatted
like IPv4 addresses, but they include a slash (“/’”) followed by a
number at the end of the address, This extra number is called the IP
network prefix. For example, a regular IPv4 address uses the
198.51.100.0 format, whereas a CIDR IP address would include the IP
network prefix at the end of the address, 198.51.100.0/24. This CIDR
address encompasses all IP addresses between 198.51.100.0 and
198.51.100.255. The system of CIDR addressing reduces the number of
entries in routing tables and provides more available IP addresses
within networks.

## Security benefits of subnetting

Subnetting allows network professionals and analysts to create a network
within their own network without requesting another network IP address
from their internet service provider. This process uses network
bandwidth more efficiently and improves network performance. Subnetting
is one component of creating isolated subnetworks through physical
isolation, routing configuration, and [firewalls](/firewall).
