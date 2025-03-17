---
title: "Cyber threat intelligence (CTI)"
date: 2025-02-13
draft: false
math: false
---

The main goal of CTI is make connections between data and information
gathered from the computers and networks (like IP addresses, URLs, how
many employees have accessed a specific website in a time period, etc.),
and make insights out of them to better understand the motives of an
[adversary](/threat-actor).

{{< toc >}}

## Questions that need to be answered

- Who's attacking you?
- What are their motivations?
- What are their capabilities?
- What artefacts and [indicators of compromise](/indicators-of-compromise) (IOCs) should you look for?

With these questions, threat intelligence would be gathered from
different sources under the following categories:

**Internal**:
- Corporate security events such as vulnerability assessments and
  incident response reports.
- Cyber awareness training reports.
- System logs and events.

**Community**:
- Open web forums.
- Dark web communities for cybercriminals.

**External**:
- Threat intel feeds (Commercial & Open-source)
- Online marketplaces.
- Public sources include government data, publications, [social media](/social-media),
  financial and industrial assessments.

## CTI lifecycle

1. Planning and direction -- define objectives like:
    - assets that need defending
    - potential threats, exploits, and vulnerabilities of those assets
    - sources of data and intel
    - tools and resources needed for defending assets
2. Collection -- data gathering that may involve commercial, private,
   and/or open sources available
3. Processing -- cleaning up and formatting of data collected, usually
   through [SIEM](/SIEM)
4. Analysis -- once information is aggregated, it's time to form
   insights that may involve:
    - investigating a potential threat
    - coming up with an action plan to prevent an attack
    - improving [security controls](/security-controls)
5. Dissemination -- reporting of findings to stakeholders
6. Feedback -- getting responses from stakeholders to keep the lifecycle
   working

## Frameworks

- [MITRE ATT&CK](https://attack.mitre.org/)
- [Trusted Automated Exchange of Intelligence Information (TAXII)](https://oasis-open.github.io/cti-documentation/taxii/intro)
- [Structured Threat Information Expression (STIX)](https://oasis-open.github.io/cti-documentation/stix/intro)
- [Cyber kill chain](/cyber-kill-chain)

## Tools

- https://urlscan.io/
- https://abuse.ch/ 
    - https://feodotracker.abuse.ch/
    - https://bazaar.abuse.ch/
    - https://sslbl.abuse.ch/
    - https://urlhaus.abuse.ch/
    - https://threatfox.abuse.ch/
- https://talosintelligence.com/

## Resources

- [Recorded Future](https://www.recordedfuture.com/resources)
- [Google Cloud Security](https://cloud.google.com/security/resources)
