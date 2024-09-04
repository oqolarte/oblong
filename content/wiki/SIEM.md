---
title: "Security Information and Event Management (or Monitoring)"
date: 2024-06-20
draft: false
math: false
---

SIEM is an application that collects and analyzes [log](/computer-log)
data to monitor in real time critical activities in an organization.

The implementation of automation will also help security teams respond
faster to possible incidents, performing many actions without waiting
for a human response. **Security orchestration, automation, and response
(SOAR)** is a collection of applications, tools, and workflows that uses
automation to respond to security events. Essentially, this means that
handling common security-related incidents with the use of SIEM tools is
expected to become a more streamlined process requiring less manual
intervention.

## SIEM process

1. **Collect and aggregate data**: SIEM collects logs from various
   sources like firewalls, servers, routers, etc, which are consolidated
   in a centralized place. This removes the need to review log from each
   source.
1. **Normalize data**: SIEM then transforms the data into a standard,
   structured format that is easily searchable.
1. **Analyze data**: Collected data is then analyzed with some type of
   detection logic, and if any of the log activity matches a rule,
   alerts are sent to cybersecurity teams.

## SIEM Dashboards

SIEM dashboards help security analysts quickly and easily access their
organization's [security information](/infosec) as charts, graphs, or
tables.

In addition to providing a comprehensive summary of security-related
data, SIEM dashboards also provide stakeholders with different metrics.
**Metrics** are key technical attributes such as response time,
availability, and failure rate, which are used to assess the performance
of a software application.

SIEM dashboards can be customized to display specific metrics or other
data that are relevant to different members in an organization. For
example, a security analyst may create a dashboard that displays metrics
for monitoring everyday business operations, like the volume of incoming
and outgoing network traffic.

## Types of SIEM tools

**Self-hosted** SIEM tools require organizations to install, operate,
and maintain the tool using their own physical infrastructure, such as
server capacity. These applications are then managed and maintained by
the organization's IT department, rather than a third party vendor.
Self-hosted SIEM tools are ideal when an organization is required to
maintain physical control over confidential data.

**Cloud-hosted** SIEM tools are maintained and managed by the SIEM
providers, making them accessible through the internet. Cloud-hosted
SIEM tools are ideal for organizations that don't want to invest in
creating and maintaining their own infrastructure.

## Commonly used SIEM tools

### Splunk

[Splunk](https://www.splunk.com/) is a data analysis platform,
and Splunk Enterprise provides SIEM solutions.
Splunk Enterprise is a self-hosted tool used to retain,
analyze, and search an organization's log data. The following are Splunk
dashboards and their purposes:

Security posture dashboard
: designed for security operations centers (SOCs). It displays the last
24 hours of an organization’s notable security-related events and trends
and allows security professionals to determine if security
infrastructure and policies are performing as designed. Security
analysts can use this dashboard to monitor and investigate potential
threats in real time, such as suspicious network activity originating
from a specific IP address.

Executive summary dashboard
: analyzes and monitors the overall health of the organization over
time. This helps security teams improve security measures that reduce
risk. Security analysts might use this dashboard to provide high-level
insights to stakeholders, such as generating a summary of security
incidents and trends over a specific period of time.

Incident review dashboard
: allows analysts to identify suspicious
patterns that can occur in the event of an incident. It assists by
highlighting higher risk items that need immediate review by an analyst.
This dashboard can be very helpful because it provides a visual timeline
of the events leading up to an incident.

Risk analysis dashboard
: helps analysts identify risk for each risk
object (e.g., a specific user, a computer, or an IP address). It shows
changes in risk-related activity or behavior, such as a user logging in
outside of normal working hours or unusually high network traffic from a
specific computer. A security analyst might use this dashboard to
analyze the potential impact of vulnerabilities in critical assets,
which helps analysts prioritize their risk mitigation efforts.

### Chronicle

[Google's Chronicle](https://chronicle.security) is a cloud-native SIEM
tool that stores security data for search and analysis. Cloud-native
means that Chronicle allows for fast delivery of new features.
Chronicle provides multiple dashboards which are the following:

Enterprise insights dashboard
: highlights recent alerts. It identifies suspicious domain names in
logs, known as [indicators of compromise](/indicators-of-compromise) (IOCs). Each result is labeled
with a confidence score to indicate the likelihood of a threat. It also
provides a severity level that indicates the significance of each threat
to the organization. A security analyst might use this dashboard to
monitor login or data access attempts related to a critical asset—like
an application or system—from unusual locations or devices.

Data ingestion and health dashboard
: shows the number of event logs, log sources, and success rates of data
being processed into Chronicle. A security analyst might use this
dashboard to ensure that log sources are correctly configured and that
logs are received without error. This helps ensure that log related
issues are addressed so that the security team has access to the log
data they need.

IOC matches dashboard
: indicates the top threats, risks, and vulnerabilities to the
organization. Security professionals use this dashboard to observe
domain names, IP addresses, and device IOCs over time in order to
identify trends. This information is then used to direct the security
team’s focus to the highest priority threats. For example, security
analysts can use this dashboard to search for additional activity
associated with an alert, such as a suspicious user login from an
unusual geographic location.

Main dashboard
: displays a high-level summary of information related to the
organization’s data ingestion, alerting, and event activity over time.
Security professionals can use this dashboard to access a timeline of
security events—such as a spike in failed login attempts— to identify
threat trends across log sources, devices, IP addresses, and physical
locations.

Rule detections dashboard
: provides [statistics](/statistics) related to incidents with the
highest occurrences, severities, and detections over time. Security
analysts can use this dashboard to access a list of all the alerts
triggered by a specific detection rule, such as a rule designed to alert
whenever a user opens a known malicious attachment from an email.
Analysts then use those statistics to help manage recurring incidents
and establish mitigation tactics to reduce an organization's level of
risk.

User sign in overview dashboard
: provides information about user access behavior across the
organization. Security analysts can use this dashboard to access a list
of all user sign-in events to identify unusual user activity, such as a
user signing in from multiple locations at the same time. This
information is then used to help mitigate threats, risks, and
vulnerabilities to user accounts and the organization’s applications.
