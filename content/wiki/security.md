---
title: "Security Mindset"
date: 2022-11-01
draft: false
---

Our security is only as good as the humans that "maintain" or
control it. Whether we like it or not, it becomes
increasingly complex. Adding a functionality---be it to soft- and/or
hardware---can introduce unexpected vulnerabilties. And decisions we
make based on our own abilities to "enhance" security can be
ineffective.

{{< toc >}}

Security Mindset is the ability to evaluate risk and constantly seek out
and identify the potential or actual breach of a system. It encourages a
different way of looking at the world around us: to get into the
thinking of a [would-be bad actor](/threat-actor) and how can the
current systems, [including digital systems](/cybersecurity), in place
be exploited; to question the norms and assumptions. For example, how
can we better talk to each other in private?

By trying to identify a system's weaknesses, we get closer at making it
more secure.

As security analysts, we need to ask "why", not just "how", an attack
can possibly executed by a bad actor. What could their motivations be?
Is it money, or something else? Is it possible to predict their intent?
If we rely heavily and put our trust on
[automation](/automation), attackers can eventually exploit whatever
predictability is embedded within automated tools or processes.

Teaching designers how a system might fail is just as
important as thinking about how they will work. In all cases,
anticipating attacks is the key to preparing for them. In security, we
do that by [threat modeling](/threat-modeling).

> Beware of bugs in above code;
> I have only proved it correct, not tried it.
>
> -- Donald Knuth

Security, in any context, is not something one adds on ad hoc.
It has to be included in all stages of development and implementation.
Security analysts and the organizations they work with have to be
proactive about protecting systems from attack.
This is where [security hardening](/security-hardening) comes in.

It's also important to remember that there's a range of abilities that
we must keep in mind when designing and implementing security solutions.
Just as security should be embedded in every stage of a project,
*accessibility* should alse be embedded in every security plans.

[Technologies](/technology) change rapidly.
And yet, some hackers don't even have to be that tech-savvy to infiltrate a
system. If they could get in by playing on one's good nature,
it's [social engineering](/social-engineering).

If more people had a security mindset,
the world as we know it now would be safer and more secure,
even as technologies evolve in ways we haven't begun to imagine yet.

## Making sure security is effective

Most breaches occur on systems with security controls. They either have
poor design or implementation, poor organizational security hygiene, new
exploits.

Basic assurance methods include:
- [vulnerability scans](/vulnerability-scanning) which identify the services that can be accessed
  and check that they have all known patches applied;
- [Security control audits](/security-controls), which predefine a set of conditions based on
  the control and predict the expected results; and
- [penetration tests](/pen-test), which use known exploits and exploit techniques to
  try to circumvent the control

## CIA Triad

The CIA (confidentiality, integrity, availability) triad is a
foundational [cybersecurity](/cybersecurity) model that helps inform how organizations consider risk
when setting up systems and security policies.

### Confidentiality

Confidentiality is the idea that only authorized users can access
specific assets or data. It can be enhanced through the implementation
of design principles, such as the principle of least privilege. The
principle of least privilege limits users' access to only the
information they need to complete work-related tasks. Limiting access is
one way of maintaining the confidentiality and security of private data.

### Integrity

Integrity is the idea that the data is verifiably correct, authentic,
and reliable. Having protocols in place to verify the authenticity of
data is essential. One way to verify data integrity is through
[cryptography](/cryptography), which is used to transform data so
unauthorized parties cannot read or tamper with it.

### Availability

Availability is the idea that data is accessible to those who are
authorized to use it. When a system adheres to both availability and
confidentiality principles, data can be used when needed.

## Ethics

For every new security incident or risk, the right or
wrong decision isn't always clear.

Security ethics are guidelines for making appropriate decisions as a
security professional. Being ethical requires that security
professionals remain unbiased and maintain the security and
confidentiality of private data.

Some ethical principles:

- Confidentiality: there needs to be a high level of respect for privacy
  to safeguard private assets and data
- [Privacy](/privacy) protections: To effectively safeguard PII
  (personally identifiable information) and SPII (sensitive PII)
  data, security professionals hold an ethical obligation to secure
  private information, identify security vulnerabilities, manage
  organizational risks
- Laws

### International standpoint on counterattacks

[The International Court of Justice](https://www.icj-cij.org/home) (ICJ), which updates its guidance regularly, states that a person or group can counterattack if: 

- The counterattack will only affect the party that attacked first.
- The counterattack is a direct communication asking the initial
  attacker to stop.
- The counterattack does not escalate the situation.
- The counterattack effects can be reversed.

Organizations typically do not counterattack because the above scenarios
and parameters are hard to measure. There is a lot of uncertainty
dictating what is and is not lawful, and at times negative outcomes are
very difficult to control. Counterattack actions generally lead to a
worse outcome, especially when you are not an experienced professional
in the field.

To learn more about ethical concerns from an
international perspective on [Tallinn Manual](https://ccdcoe.org/research/tallinn-manual/)

## Security Audit

Security audit is a review of an organization's security controls,
policies, and procedures against a set of expectations.

### Internal Audits

- Establishing the scope and goals
    - List assets that will be assessed
    - Note how the audit will help the organization achieve its desired goals
    - Indicate how often an audit should be performed
    - Include an evaluation of organizational policies, protocols, and
      procedures
- Conducting risk assessment
- Completing a controls assessment
- Assessing compliance
- [Communicating results](/communication)
    - Summarize scope and goals
    - List existing risks
    - Note how quickly those risks need to be addressed
    - Identify compliance regulations
    - Provide recommendations
