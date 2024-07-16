---
title: "Intrusion Detection System (IDS)"
date: 2024-07-16
draft: false
math: false
---

![Intrusion detection system network topology](/image/ids.png)

An intrusion detection system (IDS) is an application that monitors
system activity and alerts on possible intrusions. An IDS alerts
administrators based on the signature of malicious traffic.

The IDS is configured to detect known attacks. IDS systems often
[sniff data packets](/network-protocol-analyzer)
as they move across the network and analyze them for the
characteristics of known attacks. Some IDS systems review not only for
signatures of known attacks, but also for anomalies that could be the
sign of malicious activity. When the IDS discovers an anomaly, it sends
an [alert to the network administrator](/network-security) who can then investigate further.

The limitations to IDS systems are that they can only scan for known
attacks or obvious anomalies. New and sophisticated attacks might not be
caught. The other limitation is that the IDS doesn’t actually stop the
incoming traffic if it detects something awry. It’s up to the network
administrator to catch the malicious activity before it does anything
damaging to the network. An IDS circled above an image of a switch,
which rests between a [firewall](/firewall) and the [network](/network).

When combined with a firewall, an IDS adds another layer of defense. The
IDS is placed behind the firewall and before entering the LAN, which
allows the IDS to analyze data streams after network traffic that is
disallowed by the firewall has been filtered out. This is done to reduce
noise in IDS alerts, also referred to as false positives.
