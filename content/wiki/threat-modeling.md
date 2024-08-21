---
title: "Threat modeling"
date: 2024-08-21
draft: false
math: false
---

Threat modeling is a process of identifying assets,
their vulnerabilities, and how each is exposed to threats.

Applications (mobile, web-based, etc.) have changed the way people
access the digital world. The volume of
[data being processed](/data-management)
by applications makes securing them a key
to reducing risk for everyone who’s connected.

For example, say an application uses Java-based logging libraries with
the Log4Shell vulnerability
([CVE-2021-44228](https://nvd.nist.gov/vuln/detail/CVE-2021-44228)). If
it's not patched, this vulnerability can allow remote code execution
that an attacker can use to gain full access to your system from
anywhere in the world. If exploited, a critical vulnerability like this
can impact millions of devices.

[Defending the application layer](/defense-in-depth) requires proper
testing to uncover weaknesses that can lead to risk.

## General steps in threat modeling

1. **Define the scope** of the model. The team determines what they're
   building by creating an inventory of assets and classifying them.
2. **Identify threats**. The team defines all potential [threat actors](/threat-actor). After threat actors have been identified, the
   team puts together what's known as an **attack tree** which is a
   diagram that maps threats to assets. The team tries to be as detailed
   as possible when constructing this diagram before moving on.
3. **Characterize the environment**. The team applies an attacker
   mindset. They consider how the customers and employees interact with
   the environment. Other factors they consider are external partners
   and third party vendors.
4. **Analyze threats**. The team works together to examine existing
   protections and identify gaps. They then rank threats according to
   their risk score that they assign.
5. **Mitigate risk**. The group creates their plan for defending against
   threats. The choices here are to *avoid risk*, *transfer it*, *reduce
   it*, or *accept it*.
6. **Evaluate findings**. Everything that was done during the exercise
   is documented, fixes are applied, and the team makes note of any
   successes they had. They also record any lessons learned, so they can
   inform how they approach future threat models.

## Common frameworks

Organizations might use any one of these to gather intelligence and make decisions to improve their [security posture](/security).

- **STRIDE** is a threat-modeling framework developed by Microsoft. It’s
  commonly used to identify vulnerabilities in six specific attack
  vectors. The acronym represents each of these vectors: spoofing,
  tampering, repudiation, information disclosure, denial of service, and
  elevation of privilege.
- The **Process of Attack Simulation and Threat Analysis** (PASTA) is a
  risk-centric threat modeling process developed by two [OWASP](/owasp)
  leaders and supported by a cybersecurity firm called VerSprite. Its
  main focus is to discover evidence of viable threats and represent
  this information as a model. PASTA's evidence-based design can be
  applied when threat modeling an application or the environment that
  supports that application. Its seven stage process consists of various
  activities that incorporate relevant security artifacts of the
  environment, like vulnerability assessment reports.
- **Trike** is an open source methodology and tool that takes a
  security-centric approach to threat modeling. It's commonly used to
  focus on security permissions, application use cases, privilege
  models, and other elements that support a secure environment.
- The **Visual, Agile, and Simple Threat** (VAST) Modeling framework is
  part of an automated threat-modeling platform called ThreatModeler®.

## Participating in threat modeling

One of the keys to threat modeling is asking the right questions:

- What are we working on?
- What kinds of things can go wrong?
- What are we doing about it?
- Have we addressed everything?
- Did we do a good job?
