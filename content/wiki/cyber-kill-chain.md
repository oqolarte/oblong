---
title: "Cyber Kill Chain"
date: 2025-01-16
draft: false
math: false
---

The Cyber Kill Chain framework was established on 2011 for
[cybersecurity](/cybersecurity) based on the military concept, with the
following attack phases:

- Reconnaissance
- Weaponization
- Delivery
- Exploitation
- Installation
- [Command & Control](/c2)
- Actions on Objectives

{{< toc >}}

## Reconnaissance

Discovering and collecting info on the system and the victim, i.e.,
planning phase.

[OSINT](/osint) falls under reconnaissance.

One common and effective way of starting a recon is through email
harvesting, which is the process of obtaining email addresses from
public, paid, or free services. Once an attacker obtains the email ads,
they can implement phishing, a common [social engineering](/social-engineering) attack. A popular tool for this is [theHarvester](https://github.com/laramies/theHarvester).

Social media sites like LinkedIn, Facebook, Twitter, and Instagram can
also be used to gather info on a target.

## Weaponization

With data from recon, [threat actors](/threat-actor) can now "weaponize"
it to get what they want from their target, which combines [malware](/malware) and exploit into a deliverable payload.

Exploit
: program or code that takes advantage of vulnerability or flaw in the
application or system

Payload
: a malicicous code that the attacker runs on the system

### Examples

An attacker would:

1. Create an infected Microsoft Office document containing malicious
   macro. For more info, check "[Intro to Macros and VBA For Script Kiddies](https://www.trustedsec.com/blog/intro-to-macros-and-vba-for-script-kiddies)"
   by TrustedSec.
2. Create a malicious payload or a sophisticated worm, put it on USB
   drives, and distribute in public.
3. Choose [command and control techniques](/c2) for executing the
   commands on the target's machine or deliver more payloads.
4. Select a backdoor implant

## Delivery

The delivery phase is when the threat actor decides to choose the method
for transmitting the payload. Some examples of delivery methods:

- [Phishing](/social-engineering/#phishing)
- USB drop attack, in which the attacker distributes ("accidentally
  drops") infected USB drives in public places like coffee shops,
  parking lots, or on streets.
- [Watering hole attack](https://en.wikipedia.org/wiki/Watering_hole_attack)

## Exploitation

To gain access to the system, an attacker needs to exploit the
vulnerability.

After gaining access to the system, the attacker could exploit software,
systemm or server-based vulnerabilities to escalate privileges or move
laterally through the network. This lateral movement allows the attacker
to avoid detection and retain access, even if discovered on the machine
that was first infected.

The attacker might also apply a [zero-day exploit](https://www.trellix.com/security-awareness/cybersecurity/what-is-a-zero-day-exploit/),
which is an unknown exploit that can create problems before anyone
realizes something is wrong.

## Installation

After gaining access, the attacker would want to gain a [persistent backdoor](https://www.offsec.com/metasploit-unleashed/persistent-backdoors/)
that would allow for continued access to the target's system.

The persistence can be achieved through:

- Installing a web shell on the webserver, usually written in ASP, PHP,
  or JSP to maintain access to the compromised system. For more info,
  read "[Web shell attacks continue to rise](https://www.microsoft.com/en-us/security/blog/2021/02/11/web-shell-attacks-continue-to-rise/)" on Microsoft.
- Creating or modifying Windows services, also known as [T1543.003 on MITRE ATT&CK](https://attack.mitre.org/techniques/T1543/003/)

During this phase, the attacker can also use [timestomping](https://attack.mitre.org/techniques/T1070/006/), i.e.,
modifying files' timestamps, to avoid detection.

## Command and control

See [Command & Control](/c2) page for more details.

## Actions on Objectives (Exfiltration)

After going through six phases of attack, the attacker can now take
action on their original objectives. They can achieve any of the
following:

- Collect the credentials from users.
- Perform privilege escalation (gaining elevated access like domain
  administrator access from a workstation by exploiting the
  misconfiguration).
- Internal reconnaissance (e.g., an attacker gets to interact
  with internal software to find its vulnerabilities).
- Lateral movement through the company's environment.
- Collect and exfiltrate sensitive data.
- Deleting the backups and shadow copies. Shadow Copy is a Microsoft
  technology that can create backup copies, snapshots of computer files,
  or volumes.
- Overwrite or corrupt data.

## NEXT

The cyber kill chain framework is a good tool to start on, but it's not
perfect and leaves some security gaps.

[Unified Kill Chain framework](/unified-kill-chain) is another tool used to help understand how
cyber attacks occur.
