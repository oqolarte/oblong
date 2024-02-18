---
title: "On Cybersecurity"
date: 2023-08-21
draft: false
---

Cybersecurity is the management of risk related to internet-connected
businesses.

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

## NIST Cybersecurity Framework

 https://www.nist.gov/cyberframework

 Action-oriented approac to security, and has 3 elements:
 
 1. Framework Core
    - Identify (ID)
        - Asset Management, Business Environment, Governance, Risk
          Assessment, Risk Management Strat
    - Protect (PR)
        - Access Control, Awareness & Training, Data Security,
          Information Protection Processes & procedures, Maintenance,
          Protective Technology
    - Detect (DE)
        - Anomalies & events, security continuous monitoring, detectin
          processes
    - Respond (RE)
        - Response planning, communications, analysis, mitigation,
          improvements
    - Recover (RC)
        - recovery planning, improvements, communications
 2. Framework Profile
    - This step aligns business outcomes with cybersecurity activities.
 3. Framework Implementation Tiers
    - Maturity levels: Partial, Risk informed, Repeatable, Adaptive
    - Determine first the current risk profile. What, then, would be the
      Target Risk Profile detailing the acceptable levels of risk?
      Security plan is the set of processes required to transition from
      Current to Target.

### Key actions to implement a cybersecurity program

1. Identify business outcomes
2. Understand threats and vulnerabilities
3. Create a current profile
4. Conduct a Risk assesment
5. Create the target profile
6. Decide on the target profile
7. Determine, analyze, and prioritize gaps
8. Implement the plan

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
   security information and event monitoring (SIEM), security incidents,
   forensics, and managing evidence

## Making sure security is effective

Most breaches occur on systems with security controls.  They either have
poor design or implementation, poor organizational security hygiene, new
exploits.

Basic assurance methods include:
- vulnerability scans which identify the services that can be accessed
  and check that they have all known patches applied;
- Security control audits, which predefine a set of conditions based on
  the control and predict the expected results; and
- penetration tests, which use known exploits and exploit techniques to
  try to circumvent the control 
