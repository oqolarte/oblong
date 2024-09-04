---
title: "Intrusion Detection System (IDS)"
date: 2024-07-16
draft: false
math: false
---

![Intrusion detection system network topology](/image/ids.png)

An intrusion detection system (IDS) is an application that monitors
system and network activity and alerts on possible intrusions. An IDS
alerts administrators based on the signature of malicious traffic.

The IDS is configured to detect known attacks. IDS systems often
[sniff data packets](/network-protocol-analyzer)
as they move across the network and analyze them for the
characteristics of known attacks. Some IDS systems review not only for
signatures of known attacks, but also for anomalies that could be the
sign of malicious activity. When the IDS discovers an anomaly, it sends
an [alert to the network administrator](/network-security) who can then investigate further.

## Host-based intrusion detection system

A host-based intrusion detection system (HIDS) is an application that
monitors the activity of the host on which it's installed. A HIDS is
installed as an agent on a host. A host is also known as an endpoint,
which is any device connected to a network like a computer or a server.

Typically, HIDS agents are installed on all endpoints and used to
monitor and detect security threats. A HIDS monitors internal activity
happening on the host to identify any unauthorized or abnormal behavior.
If anything unusual is detected, such as the installation of an
unauthorized application, the HIDS logs it and sends out an alert.

In addition to monitoring inbound and outbound traffic flows, HIDS can
have additional capabilities, such as monitoring file systems, system
resource usage, user activity, and more.

In the diagram below, the dotted circle around the host indicates that
HIDS is only monitoring the local activity on the single computer on
which it’s installed.

![Diagram showing HIDS tool installed on a computer](/image/hids.png)

## Network-based intrusion detection system

A network-based intrusion detection system (NIDS) is an application that
collects and monitors network traffic and network data. NIDS software is
installed on devices located at specific parts of the network that you
want to monitor. The NIDS application inspects network traffic from
different devices on the network. If any malicious network traffic is
detected, the NIDS logs it and generates an alert.

Below, the highlighted circle around the server and computers indicates
that the NIDS is installed on the server and is monitoring the activity
of the computers.


![Diagram showing HIDS tool installed on a network](/image/nids.png)

Using a combination of HIDS and NIDS to monitor an environment can
provide a multi-layered approach to intrusion detection and response.
HIDS and NIDS tools provide a different perspective on the activity
occurring on a network and the individual hosts that are connected to
it.

## Detection techniques commonly used by IDS

### Signature-based analysis

**Signature analysis**, or signature-based analysis, is a detection
method that is used to find events of interest. A signature is a pattern
that is associated with malicious activity. Signatures can contain
specific patterns like a sequence of binary numbers, bytes, or even
specific data like an IP address.

In the [Pyramid of Pain](/indicators-of-compromise/#pyramid-of-pain),
prioritizing IoCs and other indicators of attack can be useful for
creating targeted signatures to detect and block attacks.

Different types of signatures can be used depending on which type of
threat or attack you want to detect. For example, an anti-malware
signature contains patterns associated with malware. IDS tools will
monitor an environment for events that match the patterns defined in
this malware signature. If an event matches the signature, the event
gets logged and an alert is generated.

#### Advantages

- **Low rate of false positives**: Signature-based analysis is very
  efficient at detecting known threats because it is simply comparing
  activity to signatures. This leads to fewer false positives.

#### Disadvantages

- **Signatures can be evaded**: Signatures are unique, and attackers can
  modify their attack behaviors to bypass the signatures. For example,
  attackers can make slight modifications to malware code to alter its
  signature and avoid detection.
- **Signatures require updates**: Signature-based analysis relies on a
  database of signatures to detect threats. Each time a new exploit or
  attack is discovered, new signatures must be created and added to the
  signature database.
- **Inability to detect unknown threats**: Signature-based analysis
  relies on detecting known threats through signatures. Unknown threats
  can't be detected, such as new malware families or zero-day attacks,
  which are exploits that were previously unknown.

### Anomaly-based analysis

**Anomaly-based analysis** is a detection method that identifies
abnormal behavior. There are two phases to anomaly-based analysis: a
training phase and a detection phase. In the training phase, a baseline
of normal or expected behavior must be established. Baselines are
developed by collecting data that corresponds to normal system behavior.
In the detection phase, the current system activity is compared against
this baseline. Activity that happens outside of the baseline gets
logged, and an alert is generated.

#### Advantages

- **Ability to detect new and evolving threats**: Unlike signature-based
  analysis, which uses known patterns to detect threats, anomaly-based
  analysis can detect unknown threats.

#### Disadvantages

- **High rate of false positives**: Any behavior that deviates from the
  baseline can be flagged as abnormal, including non-malicious
  behaviors. This leads to a high rate of false positives.
- **Pre-existing compromise**: The existence of an attacker during the
  training phase will include malicious behavior in the baseline. This
  can lead to missing a pre-existing attacker.

## Limitations of IDS

- IDS can only scan for known attacks or obvious anomalies. New and
  sophisticated attacks might not be caught.
- IDS doesn’t actually stop the incoming traffic if it detects something
  awry. It’s up to the network administrator to catch the malicious
  activity before it does anything damaging to the network.

An IDS circled above an image of a switch, which rests between a
[firewall](/firewall) and the [network](/network).

When combined with a firewall, an IDS adds another layer of defense. The
IDS is placed behind the firewall and before entering the LAN, which
allows the IDS to analyze data streams after network traffic that is
disallowed by the firewall has been filtered out. This is done to reduce
noise in IDS alerts, also referred to as false positives.

Beyond IDS, there's also [IPS](/intrusion-prevention-system), which can
actually stop intrusion, and [EDR](/endpoint-detection-response), which
can and perform behavioral analysis to possibly stop intrusion.
