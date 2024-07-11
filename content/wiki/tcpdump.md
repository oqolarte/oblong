---
title: "tcpdump"
date: 2024-07-09
draft: false
math: false
---

[`tcpdump`](https://www.tcpdump.org/) is a command-line
[network protocol analyzer](/network-protocol-analyzer). It is popular,
lightweight–meaning it uses little memory and has a low CPU usage–and
uses the open-source libpcap library.

`tcpdump` provides a brief packet analysis and converts key information
about network traffic into formats easily read by humans. It prints
information about each packet directly into your terminal. tcpdump also
displays the source IP address, destination IP addresses, and the port
numbers being used in the [communications](/communication).

## Reading output

`tcpdump` prints the output of the command as the sniffed packets in the command line, and optionally to a log file, after a command is executed.

![Output of packet has info about network traffic](/image/tcpdump.png)

- Timestamp: The output begins with the timestamp, formatted as hours,
  minutes, seconds, and fractions of a second.
- Source IP: The packet’s origin is provided by its source IP address.
- Source port: This port number is where the packet originated.
- Destination IP: The destination IP address is where the packet is
  being transmitted to.
- Destination port: This port number is where the packet is being
  transmitted to.

### Identifying a brute force attack using `tcpdump`

Consider this sample scenario:

```
14:18:32.192571 IP your.machine.52444 > dns.google.domain: 35084+ A?
yummyrecipesforme.com. (24) 14:18:32.204388 IP dns.google.domain >
your.machine.52444: 35084 1/0/0 A 203.0.113.22 (40)


14:18:36.786501 IP your.machine.36086 > yummyrecipesforme.com.http:
Flags [S], seq 2873951608, win 65495, options [mss 65495,sackOK,TS val
3302576859 ecr 0,nop,wscale 7], length 0 14:18:36.786517 IP
yummyrecipesforme.com.http > your.machine.36086: Flags [S.], seq
3984334959, ack 2873951609, win 65483, options [mss 65495,sackOK,TS val
3302576859 ecr 3302576859,nop,wscale 7], length 0 14:18:36.786529 IP
your.machine.36086 > yummyrecipesforme.com.http: Flags [.], ack 1, win
512, options [nop,nop,TS val 3302576859 ecr 3302576859], length 0
14:18:36.786589 IP your.machine.36086 > yummyrecipesforme.com.http:
Flags [P.], seq 1:74, ack 1, win 512, options [nop,nop,TS val 3302576859
ecr 3302576859], length 73: HTTP: GET / HTTP/1.1 14:18:36.786595 IP
yummyrecipesforme.com.http > your.machine.36086: Flags [.], ack 74, win
512, options [nop,nop,TS val 3302576859 ecr 3302576859], length 0 …<a
lot of traffic on the port 80>...


14:20:32.192571 IP your.machine.52444 > dns.google.domain: 21899+ A?
greatrecipesforme.com. (24) 14:20:32.204388 IP dns.google.domain >
your.machine.52444: 21899 1/0/0 A 192.0.2.17 (40)

14:25:29.576493 IP your.machine.56378 > greatrecipesforme.com.http:
Flags [S], seq 1020702883, win 65495, options [mss 65495,sackOK,TS val
3302989649 ecr 0,nop,wscale 7], length 0 14:25:29.576510 IP
greatrecipesforme.com.http > your.machine.56378: Flags [S.], seq
1993648018, ack 1020702884, win 65483, options [mss 65495,sackOK,TS val
3302989649 ecr 3302989649,nop,wscale 7], length 0 14:25:29.576524 IP
your.machine.56378 > greatrecipesforme.com.http: Flags [.], ack 1, win
512, options [nop,nop,TS val 3302989649 ecr 3302989649], length 0
14:25:29.576590 IP your.machine.56378 > greatrecipesforme.com.http:
Flags [P.], seq 1:74, ack 1, win 512, options [nop,nop,TS val 3302989649
ecr 3302989649], length 73: HTTP: GET / HTTP/1.1 14:25:29.576597 IP
greatrecipesforme.com.http > your.machine.56378: Flags [.], ack 74, win
512, options [nop,nop,TS val 3302989649 ecr 3302989649], length 0 …<a
lot of traffic on the port 80>...
```

Below is an analysis of the sample `tcpdump` above:

```
14:18:32.192571 IP your.machine.52444 > dns.google.domain: 35084+ A?
yummyrecipesforme.com. (24)

14:18:32.204388 IP dns.google.domain > your.machine.52444: 35084 1/0/0 A
203.0.113.22 (40)
```

The first section of the DNS & HTTP traffic log file shows the source
computer (your.machine.52444) using port 52444 to send a DNS resolution
request to the DNS server (dns.google.domain) for the destination URL
(yummyrecipesforme.com). Then the reply comes back from the DNS server
to the source computer with the IP address of the destination URL
(203.0.113.22).

```
14:18:36.786501 IP your.machine.36086 > yummyrecipesforme.com.http:
Flags [S], seq 2873951608, win 65495, options [mss 65495,sackOK,TS val
3302576859 ecr 0,nop,wscale 7], length 0

14:18:36.786517 IP yummyrecipesforme.com.http > your.machine.36086:
Flags [S.], seq 3984334959, ack 2873951609, win 65483, options [mss
65495,sackOK,TS val 3302576859 ecr 3302576859,nop,wscale 7], length 0
```

The next section shows the source computer sending a connection request
(Flags [S]) from the source computer (your.machine.36086) using port
36086 directly to the destination (yummyrecipesforme.com.http). The
.http suffix is the port number; http is commonly associated with port 80.
The reply shows the destination acknowledging it received the
connection request (Flags [S.]). The communication between the source
and the intended destination continues for about 2 minutes, according to
the timestamps between this block (14:18) and the next DNS resolution
request (see below for the 14:20 timestamp).

TCP Flag codes include:

Flags [S]  - Connection Start
Flags [F]  - Connection Finish
Flags [P]  - Data Push
Flags [R]  - Connection Reset
Flags [.]  - Acknowledgment

```
14:18:36.786589 IP your.machine.36086 > yummyrecipesforme.com.http:
Flags [P.], seq 1:74, ack 1, win 512, options [nop,nop,TS val 3302576859
ecr 3302576859], length 73: HTTP: GET / HTTP/1.1
```
The log entry with the code HTTP: GET / HTTP/1.1 shows the browser is
requesting data from yummyrecipesforme.com with the HTTP: GET method
using HTTP protocol version 1.1. This could be the download request for
the malicious file.

```
14:20:32.192571 IP your.machine.52444 > dns.google.domain: 21899+ A?
greatrecipesforme.com. (24)

14:20:32.204388 IP dns.google.domain > your.machine.52444: 21899 1/0/0 A
192.0.2.172 (40)

14:25:29.576493 IP your.machine.56378 > greatrecipesforme.com.http:
Flags [S], seq 1020702883, win 65495, options [mss 65495,sackOK,TS val
3302989649 ecr 0,nop,wscale 7], length 0

14:25:29.576510 IP greatrecipesforme.com.http > your.machine.56378:
Flags [S.], seq 1993648018, ack 1020702884, win 65483, options [mss
65495,sackOK,TS val 3302989649 ecr 3302989649,nop,wscale 7], length 0
```

Then, a sudden change happens in the logs. The traffic is routed from
the source computer to the DNS server again using port .52444
(your.machine.52444 > dns.google.domain) to make another DNS resolution
request. This time, the DNS server routes the traffic to a new IP
address (192.0.2.172) and its associated URL
(greatrecipesforme.com.http). The traffic changes to a route between the
source computer and the spoofed website (outgoing traffic: IP
your.machine.56378 > greatrecipesforme.com.http and incoming traffic:
greatrecipesforme.com.http > IP your.machine.56378). Note that the port
number (.56378) on the source computer has changed again when redirected
to a new website.

## Common uses

`tcpdump` and other network protocol analyzers are commonly used to
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
