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
1. Detection and analysis
1. Containment
1. Eradication and recovery
1. Post-event activity

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

Security analysts are required to [handle all documents](/documentation) (evidence,
findings, etc.) with care when they investigate a security incident. An
incident investigation reveals critical information about the five W's
of an incident:

1. who triggered the incident
2. what happened
3. when the incident took place
4. where the incident took place
5. why the incident occurred.
