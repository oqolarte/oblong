---
title: "Incident response lifecycle"
date: 2024-08-26
draft: false
math: false
---

## Introduction

Incident lifecycle frameworks provide a structure to support incident
response operations. Frameworks help
organizations' [response teams](/csirt) to develop a
standardized approach to their incident response process, so that
incidents are managed in an effective and consistent way.

The [NIST incident response lifecycle](https://nvlpubs.nist.gov/nistpubs/specialpublications/nist.sp.800-61r2.pdf)
is a framework with the following steps dedicated to incident response:

1. Preparation
2. Detection and analysis
3. Containment
4. Eradication and recovery
5. Post-event activity

According to NIST, an **incident** is "an occurrence that
actually or imminently jeopardizes, without lawful authority, the
confidentiality, integrity, or availability of information or an
information system; or constitutes a violation or imminent threat of
violation of law, security policies, security procedures, or acceptable
use policies."

Security incidents are events, but not all events are security
incidents. An **event** is an observable occurrence on a
[network](/network), system, or device.

Here's an example of an event. A user attempts to log into their email
account, but they can't because they forgot their password. The user
then requests a password reset and successfully changes their password.

This is an observable event. Why? Because systems and applications log
password reset requests and logs provide evidence that something
happened. We know that someone successfully requested a password reset
and that they did not violate security policies to access the account.

Now, imagine that instead of the rightful owner of the account, a
malicious actor trying to gain access to the account, successfully
initiated the password change request and changed the account password.
This would be considered both an event and a security incident. It's an
event because it's an observable occurrence. It's also a security
incident because a [malicious actor](/threat-actor) violated the
security policy to access an account that is not theirs.

Security analysts are required to [handle all documents](/documentation)
(evidence, findings, etc.) with care when they investigate a security
incident. An incident investigation reveals critical information about
the five W's of an incident:

1. who triggered the incident
2. what happened
3. when the incident took place
4. where the incident took place
5. why the incident occurred.

## Cybersecurity incident detection methods

### Threat hunting

**Threat hunting** is the proactive search for threats on a network. It
is also used to detect threats before they cause damage. For example,
[fileless malware](/malware) is difficult for detection tools to
identify. With threat hunting, the combination of active human analysis
and technology is used to identify threats like fileless malware.

### Threat intelligence

Organizations can improve their detection capabilities by staying
updated on the evolving threat landscape and understanding the
relationship between their environment and malicious actors. One way to
understand threats is by using threat intelligence, which is
evidence-based threat information that provides context about existing
or emerging threats.

Threat intelligence can come from private or [public sources](/osint) like:

- **Industry reports**: These often include details about attacker's
  tactics, techniques, and procedures (TTP).
- **Government advisories**: Similar to industry reports, government
  advisories include details about attackers' TTP.
- **Threat data feeds**: Threat data feeds provide a stream of
  threat-related data that can be used to help protect against
  sophisticated attackers like advanced persistent threats (APTs). APTs
  are instances when a threat actor maintains unauthorized access to a
  system for an extended period of time. The data is usually a list of
  indicators like IP addresses, domains, and file hashes.

### Cyber deception

Cyber deception involves techniques that deliberately deceive malicious
actors with the goal of increasing detection and improving defensive
strategies.

**Honeypots** are an example of an active cyber defense mechanism that
uses deception technology. Honeypots are systems or resources that are
created as decoys vulnerable to attacks with the purpose of attracting
potential intruders. Once a malicious actor tries to access this file,
security teams are alerted.

## Chain of custody

Chain of custody is the [process of documenting](/documentation)
evidence possession and control during an incident lifecycle.

This ensures that there's a paper trail describing who handled the
evidence, and why, when, and where they handled it. Just like other
documentation types, there is no standard template of what the chain of
custody form should look like, but they do contain common elements.

This establishes integrity, reliability, and accuracy of evidence as it
is transferred from one person to another.
