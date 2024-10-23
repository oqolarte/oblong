---
title: "Triage process (cybersecurity)"
date: 2024-09-02
draft: false
math: false
---

Incidents can have the potential to cause significant damage to an
organization.
[Security teams must respond quickly and efficiently](/security)
to prevent or limit the impact of an incident.
**Triage** is the prioritizing of incidents according to their level of
importance or urgency.

## The triage process

### 1. Receive and assess

A security analyst receives an alert from an alerting system like an
[intrusion detection system (IDS)](/intrusion-detection-system). The
analyst reviews the alert to verify its validity and ensure they have a
complete understanding of the alert.

This involves gathering as much information as possible about the alert,
including details about the activity that triggered the alert, the
systems and assets involved, and more. Some questions to consider:

- Is the alert a false positive?
- Was this alert triggered in the past? If so, how was it resolved?
- Is the alert triggered by a [known vulnerability](/vulnerability-assessment)?
- What is the severity of the alert?

### 2. Assign priority

Once the alert has been assessed and verified as a genuine security
issue, it needs to be prioritized accordingly. Incidents differ in their
impact, size, and scope, which affects the response efforts. To manage
resources, security teams must prioritize how they respond to various
incidents because not all incidents are equal. Some factors to consider
when prioritizing an incident:

- **Functional impact**: Security incidents that target information
  technology systems impact the service that these systems provide to
  its users. For example, a ransomware incident can severely impact the
  confidentiality, availability, and integrity of systems. Data can be
  encrypted or deleted, making it completely inaccessible to users.
  Consider how an incident impacts the existing business functionality
  of the affected system.
- **Information impact**: Incidents can affect the confidentiality,
  integrity, and availability of an organization’s data and information.
  In a data exfiltration attack, [malicious actors](/threat-actor) can
  steal sensitive data. Consider the effects that information compromise
  can have beyond the organization.
- **Recoverability**: How an organization recovers from an incident
  depends on the size and scope of the incident and the amount of
  resources available. In some cases, recovery might not be possible,
  like when a malicious actor successfully steals proprietary data and
  shares it publicly. Spending time, effort, and resources on an
  incident with no recoverability can be wasteful. It’s important to
  consider whether recovery is possible and consider whether it’s worth
  the time and cost.

### 3. Collect and analyze

Analysis involves gathering evidence from different sources, conducting
external research, and documenting the investigative process. This is to
make an informed decision to address it. Depending on the severity of
the incident, escalation to a level two analyst or a manager might be
needed. Level two analysts and managers might have more knowledge on
using advanced techniques to address the incident.

## Benefits of triage


- **Resource management**: Triaging alerts allows security teams to
  focus their resources on threats that require urgent attention.
- **Standardized approach**: Triage provides a standardized approach to
  incident handling. [Process documentation](/documentation), like
  playbooks, help to move alerts through an iterative process to ensure
  that alerts are properly assessed and validated. This ensures that
  only valid alerts are moved up to investigate.
