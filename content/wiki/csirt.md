---
title: "Computer incident response teams"
date: 2024-08-26
draft: false
math: false
---

{{< toc >}}

## Intro

Computer security incident response teams[^CSIRT] (CSIRTs) are a
specialized group of security professionals trained in
[incident management and response](/incident-response-lifecycle).

[Security](/security) is a shared responsibility, which is why CSIRTs
must have clear
*command, control, and communication* of the situation:

- **Command** refers to having the appropriate leadership and direction
  to oversee the response.
- **Control** refers to the ability to manage technical aspects during
  incident response, like coordinating resources and assigning tasks.
- **[Communication](/communication)** refers to the ability to keep
  stakeholders informed.

## Roles in CSIRT

1. **Security analyst**. Their job is to investigate security alerts to
   determine if an incident has occurred. If an incident has been
   detected, the analyst will continuously monitor an environment for
   any threats, by doing:
       - [analyzing and triaging alerts](/triage)
       - performing root-cause investigations
       - escalating or resolving alerts
2. **Technical lead** (or Ops lead). If the incident is highly critical,
   security analysts escalate this to the technical lead, who provides
   *technical leadership* by guiding security incidents through their
   lifecycle.
3. **Incident coordinator** tracks and manages the activities of the
   CSIRT and other nonsecurity teams involved in the response effort.
   Their job is to ensure that incident response processes are followed
   and that teams are regularly updated on the incident status.

[^CSIRT]: Depending on the organization, a CSIRT can also be referred to
as an Incident Handling Team (IHT), or Security Incident Response Team
(SIRT).

## Security operations center

A security operations center (SOC) is an organizational unit dedicated
to monitoring [networks](/network), systems, and devices for security
threats or attacks. Structurally, a SOC (usually pronounced "sock")
often exists as its own separate unit or within a CSIRT. You may be
familiar with the term blue team, which refers to the security
professionals who are responsible for defending against all security
threats and attacks at an organization. A SOC is involved in various
types of blue team activities, such as
[network monitoring](/network-protocol-analyzer),
analysis, and response to incidents.

## SOC organization

![SOC Tier Diagram](/image/soc-tier.png)

### Tier 1 SOC analyst

The first tier is composed of the least experienced SOC analysts who are
known as level 1s (L1s). They are responsible for:

- Monitoring, reviewing, and prioritizing alerts based on criticality or
  severity
- Creating and closing alerts using ticketing systems
- Escalating alert tickets to Tier 2 or Tier 3

### Tier 2 SOC analyst

The second tier comprises the more experienced SOC analysts, or level 2s
(L2s). They are responsible for:

- Receiving escalated tickets from L1 and conducting deeper
  investigations
- Configuring and refining security tools
- Reporting to the SOC Lead

### Tier 3 SOC lead

The third tier of a SOC is composed of the SOC leads, or level 3s (L3s).
These highly experienced professionals are responsible for:

- Managing the operations of their team
- Exploring methods of detection by performing advanced detection
  techniques, such as [malware](/malware) and [forensics analysis](/digital-forensics)
- Reporting to the SOC manager

### SOC manager

The SOC manager is at the top of the pyramid and is responsible for:

- Hiring, training, and evaluating the SOC team members
- Creating performance metrics and managing the performance of the SOC
  team
- Developing reports related to incidents, compliance, and auditing
- Communicating findings to stakeholders such as executive management

## Resources

- [The security operations ecosystem](https://chronicle.security/blog/posts/soc-ecosystem-infographic/)
- [Cyber career pathways tool](https://niccs.cisa.gov/workforce-development/cyber-career-pathways-tool)
- [Detection and Response](https://www.youtube.com/watch?v=QZ0cpBocl3c) (YouTube) at Google: Episode 2 of the Hacking Google series of videos
