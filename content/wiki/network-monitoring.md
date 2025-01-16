---
title: "Network monitoring"
date: 2024-08-27
draft: false
math: false
---

[Network communications](/network) provide information about connections
such as source and destination [IP addresses](/ip-address),
amount of data transferred,
date and time, etc. This information can be valuable when
developing a baseline of normal or expected behavior.

![A simple line graph with zigzag lines; a horizontal line coming from the y-axis on the left goes to the right, and is labeled "baseline"](/image/baseline.png)

In [security](/security), baselines help establish a standard of
expected or normal behavior for systems, devices, and networks.

## Monitoring the network

Monitoring involves examining network components to detect unusual
activities (i.e., deviations from baseline), such as large and unusual
data transfers. One way to do this is by generating packet captures and
then analyzing the captured traffic to identify unusual activity on a
network.

Examples of network components that can be monitored to
detect malicious activity:

### Flow analysis

Flow refers to the movement of network communications and includes
information related to packets, protocols, and ports. Packets can travel
to ports, which receive and transmit communications. Ports are often,
but not always, associated with network protocols. For example, port 443
is commonly used by HTTPS which is a protocol that provides website
traffic encryption.

But [malicious actors](/threat-actor) can use protocols and ports that
are not commonly associated to maintain communications between the
compromised system and their own machine by implenting techniques called
[**command and control (C2)**](/c2).

For example, malicious actors can use HTTPS protocol over port 8088 as
opposed to its commonly associated port 443 to communicate with
compromised systems. Organizations must know which ports should be open
and approved for connections, and watch out for any mismatches between
ports and their associated protocols.

### Packet payload information

Network packets contain components related to the transmission of the
packet. This includes details like source and destination IP address,
and the packet payload information, which is the actual data that’s
transmitted. Often, this data is encrypted and requires decryption for
it to be readable. Organizations can monitor the payload information of
packets to uncover unusual activity, such as sensitive data transmitting
outside of the network, which could indicate a possible data
exfiltration attack.

### Temporal patterns

Network packets contain information relating to time. This information
is useful in understanding time patterns. For example, a company
operating in North America experiences bulk traffic flows between 9 a.m.
to 5 p.m., which is the baseline of normal network activity. If large
volumes of traffic are suddenly outside of the normal hours of network
activity, then this is considered off baseline and should be
investigated.

## Protecting a network

Organizations may deploy a **network operations center (NOC)**, which is
an organizational unit that monitors the performance of a network and
responds to any network disruption, such as a network outage. While a
[SOC](/csirt/#security-operations-center) is focused on maintaining the
security of an organization through detection and response, a NOC is
responsible for maintaining network performance, availability, and
uptime.

Security analysts monitor networks to identify any signs of potential
security incidents known as **indicators of compromise (IoC)** and
[protect networks from threats or attacks](/network-security). IoCs
provide analysts with specific evidence associated with an attack, such
as a known malicious IP address, which can help quickly identify and
respond to a potential security incident.

### Network monitoring tools

Network monitoring can be automated or performed manually. Some common
network monitoring tools can include:

- [Intrusion detection systems](/intrusion-detection-system) (IDS)
  monitor system activity and alert on possible intrusions such as
  [malware](/malware) or
  [phishing attempts](/social-engineering/#phishing).
- [Network protocol analyzers](/network-protocol-analyzers) can be used
  to analyze network communications manually in detail.
