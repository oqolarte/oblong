---
title: "tcpdump"
date: 2024-07-09
draft: false
math: false
---

[tcpdump](https://www.tcpdump.org/) is a command-line
[network protocol analyzer](/network-protocol-analyzer). It is popular,
lightweight–meaning it uses little memory and has a low CPU usage–and
uses the open-source libpcap library.

tcpdump provides a brief packet analysis and converts key information
about network traffic into formats easily read by humans. It prints
information about each packet directly into your terminal. tcpdump also
displays the source IP address, destination IP addresses, and the port
numbers being used in the [communications](/communication).

## Reading output

tcpdump prints the output of the command as the sniffed packets in the command line, and optionally to a log file, after a command is executed.

![Output of packet has info about network traffic](/image/tcpdump.png)

- Timestamp: The output begins with the timestamp, formatted as hours,
  minutes, seconds, and fractions of a second.
- Source IP: The packet’s origin is provided by its source IP address.
- Source port: This port number is where the packet originated.
- Destination IP: The destination IP address is where the packet is
  being transmitted to.
- Destination port: This port number is where the packet is being
  transmitted to.

## Common uses

tcpdump and other network protocol analyzers are commonly used to
capture and view network communications and to collect
[statistics](/statistics) about the [network](/network), such as
troubleshooting network performance issues. They can also be used to:

- Establish a baseline for network traffic patterns and network
  utilization metrics.
- Detect and identify malicious traffic
- Create customized alerts to send the right notifications when network
  issues or security threats arise.
- Locate unauthorized instant messaging (IM), traffic, or wireless
  access points.

However, attackers can also use network protocol analyzers maliciously
to gain information about a specific network. For example, attackers can
capture data packets that contain sensitive information, such as account
usernames and passwords.
