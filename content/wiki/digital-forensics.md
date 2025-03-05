---
title: "Digital forensics and incident response"
date: 2025-03-04
draft: false
math: false
---

DFIR covers the collection of forensic artifacts from digital
devices such as computers, media devices, and smartphones to investigate
an incident.

{{< toc >}}

## Why

- To find evidence of activity of [threat actor](/threat-actor) in the
  [network](/network) and sifting false alarms from real incidents
- Remove the threat actor from the network and ensure they can't come
  back
- Determine the timeline of a breach
- Finding threats and vulnerabilities that led to the breach
- Pre-empting breach by understanding threat actor's behavior
- Sharing knowledge with the [cybersecurity](/cybersecurity) community

## Basic concepts

### Artifacts

Artifacts are pieces of evidence that point to an activity performed on
a system. They are collected to support a hypothesis or claim about
attacker activity.

Most of the time, enterprise environments mainly consist of Windows and
Linux [Operating Systems](/OS). Windows systems are primarily used for
endpoints and server use-cases, like Active Directory Domain Controllers
or MS Exchange email servers. Enterprises primarily use Linux systems in
the capacity of servers hosting some service, for example, web servers
or database servers.

### Evidence preservation

We must maintain the integrity of the evidence we are collecting. Any
forensic analysis contaminates the evidence. So:

1. Evidence is collected and write-protected
2. Copy of the write-protected evidence is used for analysis. This
   process ensures that our original evidence is not contaminated and
   remains safe while analyzing.
3. If our copy under investigation gets corrupted, we can always return
   and make a new copy from the evidence we had preserved.

### Chain of custody

Collected evidence must be kept in secure custody. Only authorized
persons relevant to the investigation must have access to the evidence.

### Order of volatility

Digital evidence is often volatile, i.e., it can be lost forever if not
captured in time. Some sources are more volatile as
compared to others. For example, RAM is more volatile than a hard drive,
because when a computer is power down, data in RAM is lost, while data
in hard drive "persists." Hence, it's more important to preserve the RAM
before the hard drive.

### Timeline creation

It's important to document all activities in chronological order to
provide perspective to the investigation.

## Tools

- KAPE
- Autopsy
- Volatility
- Redline
- Velociraptor
