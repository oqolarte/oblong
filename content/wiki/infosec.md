---
title: "Information Security"
date: 2023-02-05
draft: false
---

As we continue to navigate the digital spaces, we must be aware of the
bits of information, or crumbs if you will, that we leave behind. And
how access to this information can be used in many different ways. Weak
information security is a serious problem. It can lead to things like
identity theft, financial loss, and reputational damage.

## Safety & Security Mindfulness

We have an anarchistic bias for “information wants to be free”.
But we need to be aware of info hazards.
Remember: information = knowledge = tool = power.

When you divulge information, think about:
- what power are you granting
- to whom
- over what/whom?
- and why?

Personally Identifiable Information (PII) is protected by law (GDPR, DPA).
However, the law does not value the individual but the volume.
We need to be ethically ahead of the law.
And even more so for activities that go against it.

[Consent](/consent) is key.
Information about someone is power over someone.
This is how trust grows as people learn more about each other.
[To divulge your information](/communication) is to be vulnerable.
When we exhibit care when dealing with privileged information,
trust grows.

How do you recognize when you are “not at liberty”
to use/share a piece of information?
Is it private vs. public?
Is the nature of the space or the content therein particularly sensitive?
You might want to consider whether
a piece of info is subversive, personal, health, finance, etc.,
depending on the context,
and [what would be its effect](/second-order-thinking).

## Metadata is still data

Metadata is data about *the* [data](/data-management). For example, the
image in a picture is the data; its dimensions, the date, time, and
place it was taken, and by whom, would be the picture's metadata.

Even if a piece of info has no identity (“I heard x from someone”) or no
content (“I talked to x”), I still divulges some information. Now they
know that you have access (direct or otherwise) to a specific space or
connections with a specific person. This may have important political
implications for certain people or groups with certain internal
dynamics. Even more important if you have a dedicated adversarial agent
with significant resources (e.g. the state) to map your information
network.

## Tips for mindfulness

1. Try to slow down when dealing with “juicy” or particularly exciting
   information.
2. Flip the script/try on their shoes. Imagine swapping yourself with
   each person involved in what you are about to share (e.g. dropping a
   name, telling a story):
    - would you have any misgivings about what you were thinking of
      sharing?
    - did they give clear prior consent for sharing this information?
    - if it was implicit, is that a safe and reasonable assumption to
      make?
    - if there is any doubt, better to err on the side of caution and
      ask for explicit consent first

## The rise of SSO and MFA

Infosec often focuses on managing someone's access of, and authorization
to, information.

There are the three factors of authentication: knowledge, ownership, and
characteristic. Single sign-on (SSO) and multi-factor authentication
(MFA) are two technologies that have become popular for implementing
these authentication factors.

## A better approach to authentication

**Single sign-on** (SSO) is a [technology](/technology) that combines several different logins into one. More companies are turning to SSO as a solution to their authentication needs for three reasons:

- SSO improves the [user experience](/ui-ux) by eliminating the number
  of usernames and passwords people have to remember.
- Companies can lower costs by streamlining how they manage connected
  services.
- SSO improves overall [security](/security) by reducing the number of
  access points attackers can target.

This technology became available in the mid-1990s as a way to combat
password fatigue, which refers to people’s tendency to reuse passwords
across services. Remembering many different passwords can be a
challenge, but using the same password repeatedly is a major security
risk. SSO solves this dilemma by shifting the burden of authentication
away from the user.

### How SSO works

SSO works by automating how trust is established between a user and a
service provider. Rather than placing the responsibility on an employee
or customer, SSO solutions use trusted third-parties to prove that a
user is who they claim to be. This is done through the exchange of
encrypted access tokens between the identity provider and the service
provider.

Similar to other kinds of digital information, these access tokens are
exchanged using specific protocols. SSO implementations commonly rely on
two different authentication protocols: LDAP and SAML. LDAP, which
stands for Lightweight Directory Access Protocol, is mostly used to
transmit information on-premises; SAML, which stands for Security
Assertion Markup Language, is mostly used to transmit information
off-premises, like in the cloud.

**Note**: LDAP and SAML protocols are often used together.

![Example of how SSO can connect a user to multiple apps with one access token](/image/sso.png)

### Limitations of SSO

Usernames and passwords alone are not always the most secure way of
protecting sensitive information. SSO provides useful benefits, but
there’s still the risk associated with using one form of authentication.
For example, a lost or stolen password could expose information across
multiple services.

## MFA to the rescue

**Multi-factor authentication** (MFA) requires a user to verify their
identity in two or more ways to access a system or [network](/network).
In a sense, MFA is similar to using an ATM to withdraw money from your
bank account. First, you insert a debit card into the machine as one
form of identification. Then, you enter your PIN number as a second form
of identification. Combined, both steps, or factors, are used to verify
your identity before authorizing you to access the account.

### Strengthening authentication

MFA builds on the benefits of SSO. It works by having users prove that
they are who they claim to be. The user must provide two factors (2FA)
or three factors (3FA) to authenticate their identification. The MFA
process asks users to provide these proofs, such as:

- Something a user knows: most commonly a username and password
- Something a user has: normally received from a service provider, like
  a one-time passcode (OTP) sent via SMS or via an authenticator app
- Something a user is: refers to physical characteristics of a user,
  like their fingerprints or facial scans

Requiring multiple forms of identification is an effective security
measure, especially in [cloud environments](/cloud-computing). It can be
difficult for businesses in the cloud to ensure that the users remotely
accessing their systems are not [threat actors](/threat-actor). MFA can reduce the risk
of authenticating the wrong users by requiring forms of identification
that are difficult to imitate or brute force.
