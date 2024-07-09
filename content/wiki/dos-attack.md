---
title: "Denial of Service (DoS) attack"
date: 2024-07-09
draft: false
math: false
---

Denial of service attack is an attack that targets a [network](/network)
or server and flods it with network traffic. This is meant to disrupt
the operations of the targeted organization.

A **distributed denial of service attack,** or DDoS, is a kind of DoS attack
that uses multiple devices or servers in different locations to flood
the target network with unwanted traffic. Use of numerous devices makes
it more likely that the total amount of traffic sent will overwhelm the
target server. Remember: DoS stands for denial of service. So it doesn't
matter what part of the network the attacker overloads; if they overload
anything, they win.

## Common network level DoS attacks

### SYN (synchronize) flood attack

A SYN flood attack is a type of DoS attack that simulates the TCP
connection and floods the server with SYN packets. Recall the
"handshake" process used to establish TCP connections between a device
and server (1 - 3 below).

1. The device sends a SYN, or synchronize, request to the server.
2. Then, the server responds with a SYN/ACK packet to acknowledge the
   receipt of the device's request and leaves a port open for the final
   step of the handshake.
3. Once the server receives the final ACK packet from the device, a TCP
   connection is established.
4. Malicious actors can take advantage of the protocol by flooding a
   server with SYN packet requests for the first part of the handshake.
   But if the number of SYN requests is larger than the number of
   available ports on the server, then the server will be overwhelmed
   and become unable to function.

### ICMP flood attack

Internet Control Message Protocol (ICMP) flood attack is a type of DoS
attack performed by an attacker repeatedly sending ICMP packets to a
network server. This forces the server to send an ICMP packet.
This eventually uses up all the bandwidth for incoming
and outgoing traffic and causes the server to crash.

As a refresher: ICMP is an internet protocol used by devices to tell
each other about data transmission errors across the network. Think of
ICMP like a request for a status update from a device. The device will
return error messages if there is a network concern. You can think of
this like the ICMP request checking in with the device to make sure that
all is well.

### Ping of death attack

Ping of death attack is a type of DoS attack that is caused when a
hacker pings a system by sending it an oversized ICMP packet that is
bigger than 64 kilobytes, the maximum size for a correctly formed ICMP
packet. Pinging a vulnerable network server with an oversized ICMP
packet will overload the system and cause it to crash. Think of this
like dropping a rock on a small anthill. Each individual ant can carry a
certain amount of weight while transporting food to and from the
anthill. But if a large rock is dropped on the anthill, then many ants
will be crushed, and the colony is unable to function until it rebuilds
its operations elsewhere.
