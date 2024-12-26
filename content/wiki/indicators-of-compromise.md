---
title: "Indicators of compromise (IoC)"
date: 2024-08-29
draft: false
math: false
---

Indicators of compromise (IoCs) are observable evidence suggesting signs
of a potential security incident, sometimes represented in the
[Pyramid of Pain](/pyramid-of-pain). IoCs chart specific pieces of evidence
that are associated with an attack, like a file name associated with a
type of [malware](/malware). You can think of an IoC as evidence that
points to something that's already happened.

**Indicators of attack (IoA)** are the series of observed events that
indicate a real-time incident.  IoAs focus on identifying the behavioral
evidence of an attacker, including their methods and intentions.

Essentially, IoCs help to identify the *who and what* of an attack after
it's taken place, while IoAs focus on finding the *why and how* of an
ongoing or unknown attack. For example, observing a process that makes a
network connection is an example of an IoA. The filename of the process
and the IP address that the process contacted are examples of the
related IoCs.

**Note**: Indicators of compromise are not always a confirmation that a
security incident has happened. IoCs may be the result of human error,
system malfunctions, and other reasons not related to [security](/security).

## Adding context to investigations

Security analysts need a way to expand the use of IoCs so that they can
add context to alerts.
[Threat intelligence](/incident-response-lifecycle/#threat-intelligence)
is evidence-based threat information that provides context about
existing or emerging threats. By adding this to an IoC, security teams
can develop a detailed picture of a security incident.

## Analysis of IoC with Crowdsourcing

**Crowdsourcing** is the practice of gathering information using public
input and collaboration. Threat intelligence platforms use crowdsourcing
to harness the knowledge of millions of other cybersecurity
professionals, including cybersecurity product vendors, government
agencies, cloud providers, and more.

Examples of information-sharing organizations include Information
Sharing and Analysis Centers (ISACs), which focus on collecting and
sharing sector-specific threat intelligence to companies within specific
industries like energy, healthcare, and others.
[Open-source intelligence (OSINT)](/osint) is the collection and analysis of
information from publicly available sources to generate usable
intelligence. OSINT can also be used as a method to gather information
related to threat actors, threats, vulnerabilities, and more.

This threat intelligence data is used to improve the detection methods
and techniques of security products, like detection tools or anti-virus
software.
