---
title: "Unified Kill Chain"
date: 2025-02-04
draft: false
math: false
---

Unified Kill Chain (UKC) aims to complement other [cybersecurity](/cybersecurity) frameworks, like the [cyber kill chain](/cyber-kill-chain).

{{< toc >}}

## Detailed approach

It offers a more detailed approach, identifying 18 phases officially:

1. Reconnaissance
2. Weaponization
3. Delivery
4. [Social engineering](/social-engineering)
5. Exploitation
6. Persistence
7. Defense evasion
8. [Command & control](c2)
9. Pivoting
10. Discovery
11. Privilege escalation
12. Execution
13. Credential access
14. Lateral movement
15. Collection
16. Exfiltration
17. Impact
18. Objectives

## Threat modeling

The UKC encourages [threat modeling](/threat-modeling) as UKC framework
helps identify potential attack surfaces and how these systems may be
exploited.

## Phase: In (Initial Foothold)

The main focus of this series of phases is for an attacker to gain
access to a system or [networked environment](/network).

### Reconnaissance

Information gathered from this phase can include:

- Discovering what systems and services are running on the target.
- Finding contact lists or lists of employees that can be impersonated
  or used in either a social engineering or [phishing attack](/social-engineering/#phishing).
- Looking for potential credentials that may be of use in later stages,
  such as pivoting or initial access.
- Understanding the network topology and other networked systems can be
  used to pivot too.

For more info, see [MITRE Tactic TA0043](https://attack.mitre.org/tactics/TA0043/).

### Weaponization

The attacker sets up the needed infrastructure to perform the attack.
For more info, see [MITRE Tactic TA0001](https://attack.mitre.org/tactics/TA0001/).

### Social engineering

The attacker manipulates employees to perform actions that will help in
the attack. For more information, see details in [Social Engineering](/social-engineering).

### Exploitation

Attacker takes advantage of weaknesses or vulnerabilities present in a
system. Examples:

- Uploading and executing a reverse shell to a web application.
- Interfering with an automated script on the system to execute code.
- Abusing a web application vulnerability to execute code on the system
  it is running on.

For more info, see [MITRE Tactic TA0002](https://attack.mitre.org/tactics/TA0002/).

### Persistence

Attacker uses techniques to maintain access to the target system they
have gained initial foothold on.

For more info, see [MITRE Tactic TA0003](https://attack.mitre.org/tactics/TA0003/).

### Defense evasion

This phase analyzes the techniques an attacker uses to evade defensive measures put in place in the system or network. Examples:

- [Firewalls](/firewall).
- Anti-virus systems on the target machine.
- [Intrusion detection systems](/intrusion-detection-system).

For more info, see [MITRE Tactic TA0005](https://attack.mitre.org/tactics/TA0005/).

### Command and control

Attacker establishes communications with the target system. For more
info, see [Command and control](/c2).

### Pivoting

Attacker "pivots" into other systems within the network that may not
otherwise be accessible, contain valuable data, and/or have weaker
security.

For more info, see [MITRE Tactic TA0008](https://attack.mitre.org/tactics/TA0008/).

## Phase: Through (Network Propagation)

After getting a successful foothold, attacker would seek to gain more
access and privileges to systems and data to fulfill their goals.

### Pivoting

Once the attacker has access to the system, they would use it as their
staging site and a tunnel between their command operations and the
victim’s network. The system would also be used as the distribution
point for all [malware](/malware) and backdoors at later stages.

### Discovery

The attacker would uncover information about the system and the network
it is connected to. The attacker would build a knowledge base to include
details like active user accounts, the permissions granted, applications
and software in use, web browser activity, files, directories and
network shares, and system configurations.


For more info, see [MITRE Tactic TA0007](https://attack.mitre.org/tactics/TA0007/).

### Privilege escalation

Then, attacker would try to gain more prominent permissions using the
knowledge they had built in order to elevate their access to any of the
following levels:

- system/root
- local administrator
- a user account with admin-like access
- a user account with specific access

For more info, see [MITRE Tactic TA0004](https://attack.mitre.org/tactics/TA0004/).

### Execution

Attacker deploys their malicious code using remote trojans, C2 scripts,
malicious links, and scheduled tasks.

For more info, see [MITRE Tactic TA0002](https://attack.mitre.org/tactics/TA0002/).

### Credential access

Attacker would attempt to steal account names and passwords through
various methods, including keylogging and credential dumping. This makes
them harder to detect during their attack as they would be using
legitimate credentials.

For more info, see [MITRE Tactic TA0006](https://attack.mitre.org/tactics/TA0006/).

### Lateral movement

The attacker would seek to move through the network and jump onto other
targeted systems to achieve their primary objective.

For more info, see [MITRE Tactic TA0008](https://attack.mitre.org/tactics/TA0008/).

## Phase: Out (Action on objectives)

This phase wraps up the journey of an threat actor’s attack on an
environment, where they have critical asset access and can fulfil their
attack goals. These goals are usually geared toward compromising the
confidentiality, integrity and availability (CIA) triad.

### Collection

Attacker will seek and gather all valuable data of interest. Main
targets include:

- drives
- browsers
- audio
- video
- email

For more info, see [MITRE Tactic TA0009](https://attack.mitre.org/tactics/TA0009/).

### Exfiltration

Attacker will steal data, which would be packaged [using encryption measures](/cryptography) and compression to avoid detection.

For more info, see [MITRE Tactic TA0010](https://attack.mitre.org/tactics/TA0010/).

### Impact

If the attacker seeks to compromise the integrity and availability of
the data assets, they would manipulate, interrupt or destroy these
assets. The goal would be to disrupt business and operational processes
and may involve removing account access, disk wipes, and data encryption
such as ransomware, defacement and [denial of service (DoS) attacks](/dos-attack).

For more info, see [MITRE Tactic TA0040](https://attack.mitre.org/tactics/TA0040/).

### Objectives

With all the power and access to the systems and network, the adversary would seek to achieve their strategic goal for the attack.
