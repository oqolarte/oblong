---
title: "Identity and access management"
date: 2024-08-16
draft: false
math: false
---

{{< toc >}}

## Intro

[Security](/Security) is more than simply combining processes and
technologies to protect assets. Instead, security is about ensuring that
these processes and technologies are creating a secure environment that
supports a defense strategy. A key to doing this is implementing two
fundamental security principles that limit access to organizational
resources:

- The **[principle of least privilege](/polp)** in which a user is only
  granted the minimum level of access and authorization required to
  complete a task or function.
- **Separation of duties**, which is the principle that users should not
  be given levels of authorization that would allow them to misuse a
  system.

In other words, least privilege *limits the access* that an individual
receives, while separation of duties *divides responsibilities* among
multiple people to prevent any one person from having too much control.

**Note**: Separation of duties is sometimes referred to as segregation of duties.

## Identity and access management (IAM)

As organizations become more reliant on [technology](/technology), regulatory agencies have put more pressure on them to demonstrate that they’re doing everything they can to prevent threats. Identity and access management (IAM) is a collection of processes and technologies that helps organizations manage digital identities in their environment.

**Note**: A user can either be a person, a device, or software.

## Authenticating users

To ensure the right user is attempting to access a resource requires some form of proof that the user is who they claim to be.

[Authentication is mainly verified with login credentials](/infosec/#a-better-approach-to-authentication). Single
sign-on (SSO), a technology that combines several different logins into
one, and multi-factor authentication (MFA), a security measure that
requires a user to verify their identity in two or more ways to access a
system or [network](/network), are other tools that organizations use to
authenticate individuals and systems.

### User provisioning

Back-end systems need to be able to verify whether the information
provided by a user is accurate. To accomplish this, users must be
properly provisioned. **User provisioning** is the process of creating
and maintaining a user's digital identity. For example, a college might
create a new user account when a new instructor is hired. The new
account will be configured to provide access to instructor-only
resources while they are teaching. Security analysts are routinely
involved with provisioning users and their access privileges.

**Pro tip**: Security analysts can also deprovision users. This is an
important practice that removes a user's access rights when they should
no longer have them.

### Granting authorization

If the right user has been authenticated, the network should ensure the
right resources are made available. There are three common frameworks
that organizations use to handle this step of IAM:

- **Mandatory access control** (MAC): Authorization in this model is
  based on a strict need-to-know basis. Access to information must be
  granted manually by a central authority or system administrator. For
  example, MAC is commonly applied in law enforcement, military, and
  other government agencies where users must request access through a
  chain of command. MAC is also known as non-discretionary control
  because access isn’t given at the discretion of the data owner.
- **Discretionary access control** (DAC): Typically applied when a data
  owner decides appropriate levels of access. One example of DAC is when
  the owner of a Google Drive folder shares editor, viewer, or commentor
  access with someone else.
- **Role-based access control** (RBAC): used when authorization is
  determined by a user's role within an organization. For example, a
  user in the marketing department may have access to user analytics but
  not network administration.

## Access control technologies

Users often experience authentication and authorization as a single,
seamless experience. In large part, that’s due to access control
technologies that are configured to work together. They also decrease
errors and potential risks.

A typical IAM or AAA system consists of a user directory, a set of tools
for managing data in that directory, an authorization system, and an
auditing system. Some organizations create custom systems to tailor them
to their security needs. However, building an in-house solution comes at
a steep cost of time and other resources.

Instead, many organizations opt to license third-party solutions that
offer a suite of tools that enable them to quickly secure their
information systems.

## Resources

[IDPro](https://idpro.org/) is a professional organization dedicated to
sharing essential IAM industry knowledge.
