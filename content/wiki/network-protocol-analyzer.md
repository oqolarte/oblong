---
title: "Network protocol analyzer"
date: 2024-07-09
draft: false
math: false
---

A network protocol analyzer, sometimes called a packet sniffer or a
packet analyzer, is a tool designed to capture and analyze data traffic
within a [network](/network). They are commonly used as investigative tools to
monitor networks and identify suspicious activity. There are a wide
variety of network protocol analyzers available, but some of the most
common analyzers  include:

- SolarWinds NetFlow Traffic Analyzer
- ManageEngine OpManager
- Azure Network Watcher
- Wireshark
- [tcpdump](/tcpdump)

The device’s Network Interface Card (NIC) is a piece of hardware that
connects the device to a network. The NIC reads the data transmission,
and if it contains the device’s MAC address, it accepts the packet and
sends it to the device to process the information based on the protocol.
This occurs in all standard network operations. However, a NIC can be
set to promiscuous mode, which means that it accepts all traffic on the
network, even the packets that aren’t addressed to the NIC’s device.
Malicious actors might use software like Wireshark to capture the data
on a private network and store it for later use. They can then use the
personal information to their own advantage. Alternatively, they might
use the IP and MAC addresses of authorized users of the private network
to perform [IP spoofing](/ip-spoofing).

## Malicious packet sniffing

Malicious actors may insert themselves in the middle of an authorized
connection between two devices. Then they can use packet sniffing to spy
on every data packet as it comes across their device. The goal is to
find valuable information in the data packets that they can then use to
their advantage. Attackers can use software applications or a hardware
device to look into data packets. Malicious actors can access a network
packet with a packet sniffer and make changes to the data. They may
change the information in the body of the packet, like altering a
recipient's bank account number.

### Passive packet sniffing

Passive packet sniffing is a type of attack where data packets are read
in transit. Since all the traffic on a network is visible to any host on
the hub, malicious actors can view all the information going in and out
of the device they are targeting.

### Active packet sniffing

Active packet sniffing is a type of attack where data packets are
manipulated in transit. This may include injecting internet protocols to
redirect the packets to an unintended port or changing the information
the packet contains. Active packet sniffing attack would be like a
neighbor telling the delivery person "I'll deliver that mail for you,"
and then reading the mail or changing the letter before putting it in
your mailbox. Even though your neighbor knows you and even if they
deliver it to the correct house, they are actively going out of their
way to engage in malicious behavior.

## Some ways to prevent malicious packet sniffing

- Use [VPN](/vpn)
- Use of HTTPS when visiting websites
- Avoid unprotected wi-fi
