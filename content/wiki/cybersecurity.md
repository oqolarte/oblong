---
title: "On Cybersecurity"
date: 2023-08-21
draft: false
---

Cybersecurity is the management of risk related to internet-connected
businesses. It includes ensuring confidentiality (e.g., complex password
requirement), integrity, and
availability of information by protecting networks, devices, people, and
data from unauthorized access.

Organizations use [security frameworks](/security-frameworks) as
a starting point to create
their own security policies and processes.

## Early Concepts

1. Reference Monitor - mediates access to system resources.  It also
   enforces access control. Has 3 characteristics: a. Tamper proof b.
   Mandatory validation mechanism c. Must be small enough to be analyzed
   and tested
    - Bell-LaPadula Security Model
        - Discretionary access control (DAC): Admin only grants access
          to users on a need-to-know basis.
        - Mandatory access control (MAC): each user has a specific
          access to specific files, and each file is labeled depending
          on their sensitivity
2. Security model - for reading, writing info
3. Trusted computing base (TCB) - containing all security code
    - Defines the security perimeter
    - Includes hardware, firmware, and software
4. Assurance - tests to achieve various levels of assurance
    - D1 Minimal Protection
    - C1-2 Discretionary Protection
    - B1-3 Mandatory Protections
    - A1 Verified Protection

## Understanding the basics of cyber risk

Cybersecurity risk includes
    - threats from [black hat] hackers and internet-born malware
    - vulnerabilities of internet-facing systems
    - attack countermeasures (controls)

Cybersecurity Risk Standards
    - NIST SP 800-30 Guide for conducting risk assessments
    - ISO 27005 Information Security Risk Management

### Elements of Risk

1. Threat
2. Risk Assessment
3. Vulnerabilities
4. Impact
5. Controls

Threat modeling is a process that studies each element and how it can
impact the outcomes and who will it affect.

## Analyzing Cyber threats and controls

### Risk Treatments

1. Risk acceptance
2. Risk avoidance
3. Risk transfer - e.g., getting insurance to cover the damage should
   the risk eventuate
4. Risk mitigation - controls are implemented to reduce risk in the form
   of cybersecurity policies

### Multi-tiered Control Strategy

1. Deterrent controls (reduces threats) - e.g., incarceration to deter
   criminals from carrying out the attacks
2. Preventative controls (reduces vulnerabilities) - e.g. a firewall
   which blocks protocols
3. Detective controls (detects incidents) - e.g. burglar alarm
4. Corrective controls (reduces impacts) - e.g. recovery from data
   backups

### Recording, Reporting, and the risk context

Risk Register contains basic risk information, including the impacts of
risk if realized.

Risk context are the guides to classify a risk. May include
    - likelihood
    - risk heat maps
    - Impacts (reputational, financial, etc.)
    - Actions required

## OWASP Security Principles

OWASP is Open Web Application Security Project.

1. Minimize attack surface area
2. Principle of least privilege
3. Defense in depth
4. Separation of duties
5. Keep security simple
6. Fix security issues correctly
7. Establish secure defaults
8. Fail securely
9. Don't trust services
10. Avoid security by obscurity

## Managing security with COBIT

Control Objectives for Information Technologies (COBIT) is framework
ensuring enterprises have an effective and auditable set of governance
and management processes for IT that deliver value for their
stakeholders.

### COBIT for Operational Security

DSS05 Manage security services, which defines the opsec requirements,
protect enterprise information to maintain the level of information
security risk acceptable to the enterprise in accordance with the
security policy, establish and maintain information security roles and
access privileges, and perform security monitoring. 

DSS05 objectives include the ff:
1. Protect against malware by: antivirus, security patching, security
   information awareness, change management, security filtering of email
   and web traffic, and security training
2. Manage network and connectivity security by: policy on network
   connections, password entry, firewalls and intrusion detection
   systems, network security protocols and communications encryption,
   network configuration, security mechanisms to ensure trusted
   transmission and receipt, and network security control testing and
   penetration testing. 
3. Manage endpoint security (usually of devices like laptops, desktops,
   servers etc.) by: secure configuration, hardening of devices,
   management of remote access.
4. Manage user identity and logical access by keeping track of identity
   lifecycle, role-based access, strict privileged access control
5. Manage phyiscal access to IT by perimeter protection, intruder
   detection systems, site and zone access controls, identity cards, and
   visitor management.
6. Manage sensitive documents and output devices by digital rights,
   computer password protection, secure printing, and mobile device PINs
7. Monitor the Infrastructure for security-related events by intrusion
   detection and prevention, logging and alerting, log management,
   [security information and event monitoring](/SIEM) (SIEM), security incidents,
   forensics, and managing evidence

## Career in Cybersecurity

To thrive as a cybersecurity professional, one must have these skills:

- [Communication](/communication), to collaborate with others
- Problem-solving, to recognize attack patterns and determining the best
  solution to minimize risk.
- Time management, to help minimize damage and risk by having a
- Understand the core concepts of [security domains](/security-domains).
  heightened sense of urgency
- Programming languages, to be used to automate tasks like searching
  data to identify potential threats
- Security information and event monitoring (SIEM) tools, to be used in
  periodic security audits
- Instrusion detection systems (IDSs), to monitor system activity and
  alert for possible intrusions.
- Threat landscape knowledge, to build stronger defenses against threat
  actor tactics and techniques by knowing how they operate.

## Terms

Threat actor
: Any person or group who presents [security](/security) risk

Playbook
: A list of how to go through a certain detection, and what the analyst
needs to look at in order to investigate those incidents

Internal threat
: can be a current or former employee, an external vendor, or a trusted
partner who poses a security risk. At times, an internal threat is
accidental. E.g., an employee who accidentally clicks on a
malicious email link would be considered an accidental threat. Other
times, the internal threat actor *intentionally* engages in risky
activities, such as unauthorized data access.

Network security 
: the practice of keeping an organization's network
infrastructure secure from unauthorized access. Includes data,
services, systems, and devices that are stored in an organization’s
network.

Cloud security
: The process of ensuring that assets stored in the
cloud (i.e., a network of servers that store resources and data in
remote physical locations that can be accessed via internet) are
properly configured, or set up correctly, and access to those assets is
limited to authorized users.

[Malware](/malware)
: Software designed to harm devices or networks

Network protocol analyzers
: AKA packet sniffer, is a tool designed to capture and analyze data
traffic in a network. This means that the tool keeps a record of all the
data that a computer within an organization's network encounters.

[Playbook](/playbook)
: a manual that provides details about any operational action, such as
how to respond to a security incident. It's meant to guide analysts through a
series of steps to complete specific security-related tasks.

More terms in the
[National Institute of Standards and Technology glossary](https://csrc.nist.gov/glossary)
