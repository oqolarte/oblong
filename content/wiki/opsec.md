---
title: "Basics of OpSec"
keywords: ["operational security", "opsec"]
date: 2020-09-17T20:57:17+08:00
tags: ["opsec", "anti-authority", "privacy"]
draft: false
---

Operational Security (OpSec) is the process of preventing useful
information from being gained by an adversary.

**TL;DR**: Know what to protect and know how to protect it.

{{< toc >}}

## Intro

OpSec is not simply a set of actions you take during an
[action](/direct-action) that protects you. It's a way of thinking you
apply to all aspects of your life. OpSec is also not an individual
undertaking. **Your personal security depends on the security of your
comrades and vice versa.** This is often called "security culture."

The definition of OpSec is more formalized in the contexts of military
and espionage, and in those cases it tends to have the explicit focus on
only protecting information. In colloquial usage, it tends to be broader
and includes the adjacent fields of [information security](/infosec) and
physical security. This is a natural extension of the original
definition since a significant amount of secret information is
transmitted digitally, and a breach of OpSec may have immediate physical
security consequences.

## OpSec Vocab

**target**
: a person or group who may be subject to scrutiny,
repression, or espionage

**asset**
: something a target may want to protect such as information,
physical items, or intangibles like their own liberty, mental health, or
bodily health

**adversary**
: a person or group who wants to learn about, capture, or
destroy a target's assets

**goal**
: a specific task or outcome an adversary wishes to achieve

**capability**
: knowledge, a skill, or an item an adversary has that
may use against a target to achieve goals

**vulnerability**
: something an advesary could exploit or leverage in
pursuit of their goals

**threat**
: the combination of an adversary with their goals and
capabilities

**attack**
: a possible threat that is executed

**mitigation**
: an action taken to reduce risk

## Threat Modeling

Threat modeling is the foundation of OpSec. It's a methodology used to
identify threats, and through this identification, inform mitigations
against them. Threat modeling is not a checklist that someone can give
you to reduce your risks or ensure your adversaries cannot achieve their
goals. Threat modeling must be done analytically on a case-by-case
basis. The process of developing an individual threat model is similar
regardless of the person doing the threat modeling, but the resultant
threat model is highly personalized.

### Threat modeling in real life

You are likely familiar with threat modeling and have already used it in
your day-to-day life even if you have not done so formally. Making this
decision to keep your phone in your pocket and not message your friends
while you walk home at night is threat modeling. You have recognized
that the threat of mugging or assault exists in a certain area, that
this risk is higher at night, and that you are less likely to be
targeted if you are visibly paying attention to your surroundings.

Your threat model will need to change with time as the threat landscape
and your own tolerance for risk changes. The political climate may
become more repressive, or you may start a family and need to reconsider
what possible consequences you and your family can endure.

To start building your threat model, start by identifying your assets,
possible adversaries, their goals, and their capabilities. Helpful
questions might be:

- What do I care about?
- What do I want to protect?
- What objectives am I trying to achieve? And how?
- Who might prevent me from achieving these objectives? And how?
- How have similar people with similar objectives ben thwartede or
  arrested?
- If an adversary's attack is successful, how can I limit the damage
  done?

## Threat modeling is an iterative process

As you ask yourself these questions and write down their answers, you
will be able to think of additional threats. Talking to your friends and
family may help you identify threats and vulnerabilities, but remember
that their threat models are not necessarily your own.

### Risk assessment

Once you have enumerated the threats, consider the risks associated with
each. How likely is it to occur and what are the consequences if it
does? These are estimates and meant to help you prioritize which threats
need to be addressed first. Threats that have severe consequences but
are extremely unlikely might still be ranked as low risk. Threats that
are moderately likely with only moderate consequences might be ranked as
high risk. Go with your gut when assigning risk and prioritizing the
threats.

### Threat mitigation

Once you have listed your threats, consider different mitigations
against them. Some mitigations might cover multiple threats at one time,
or you may need many mitigations to cover your highest priorit risks. A
mitigation may not fully remove a threat or reduce the risk to zero.
Mitigations are meant to decrease the amount of risk you face. In
addition to thinking about how effective a given mitigation may be
against a threat, also consider if you are likely to follow through with
this mitigation. A mitigation that you are incapable of executing is not
useful.

### No perfect security

As you threat model, you may start to feel the perfect
[security](/security) is an impossible goal, and as a result you might
as well give up. This is called security nihilism: the belief that
because security cannot be "perfect," any amount of security should be
forsaken. Rid yourself of the belief that you are either "secure" or
"insecure." There is no such thing as perfectly secure. There is simply
a state of being more secure against certain threats and less secure
against those threats. Your goal should be to improve your security, not
make it ironclad against all threats.
