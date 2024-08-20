---
title: "Cloud security"
date: 2024-08-20
draft: false
math: false
---

Just like any other IT infrastructure, a cloud infrastructure
[needs to be secured](/network-security).
It's a growing subfield of [cybersecurity](/cybersecurity) that
specifically focuses on the protection of data, applications, and
infrastructure in the cloud.

[Identity access management](/identity-access-management) (IAM)
is a collection of processes and
technologies that helps organizations manage digital identities in their
environment. This service also authorizes how users can use different
cloud resources. A common problem that organizations face when using the
cloud is the loose configuration of cloud user roles. An improperly
configured user role increases risk by allowing unauthorized users to
have access to critical cloud operations.

The number of available cloud services adds complexity to the network.
Each service must be carefully configured to meet [security](/security)
and compliance requirements. This presents a particular challenge when
organizations perform an initial migration into the cloud. When this
change occurs on their network, they must ensure that every process
moved into the cloud has been configured correctly. **Misconfigured cloud
services are a common source of cloud security issues.**

Every service or application on a network carries its own set of risks
and vulnerabilities and increases an organization’s overall attack
surface. **An increased attack surface must be compensated for with
increased security measures.**

Cloud networks that utilize many services introduce lots of entry points
into an organization’s network. However, if the network is designed
correctly, utilizing several services does not introduce more entry
points into an organization’s network design. These entry points can be
used to introduce [malware](/malware) onto the network and pose other
security vulnerabilities.

**Zero-day attacks** are an important security consideration for
organizations using cloud or traditional on-premise network solutions. A
zero day attack is an exploit that was previously unknown. Cloud service
providers (CSPs) are more likely to know about a zero day attack
occurring before a traditional IT organization does. CSPs have ways of
patching hypervisors and migrating workloads to other virtual machines.
These methods ensure the customers are not impacted by the attack.

Network administrators have access to every data packet crossing the
network with both on-premise and cloud networks.
[They can sniff and inspect data packets](/network-protocol-analyzer)
to learn about network performance or to check for
possible threats and attacks.

This kind of visibility is also offered in the cloud through flow logs
and tools, such as packet mirroring. CSPs take responsibility for
security in the cloud, but they do not allow the organizations that use
their infrastructure to monitor traffic on the CSP’s servers. Many CSPs
offer strong security measures to protect their infrastructure. CSPs pay
for third-party audits to verify how secure a cloud network is and
identify potential vulnerabilities. The audits can help organizations
identify whether any vulnerabilities originate from on-premise
infrastructure and if there are any compliance lapses from their CSP.

CSPs are large organizations that work hard to stay up-to-date with
[technology advancements](/technology). For organizations that are used
to being in control of any adjustments made to their network, this can
be a potential challenge to keep up with. Cloud service updates can
affect security considerations for the organizations using them.

Organizations that use CSPs usually have to update their IT processes.
It is possible for organizations to continue following established best
practices for changes, configurations, and other security
considerations. However, an organization might have to adopt a different
approach in a way that aligns with changes made by the CSP.

Cloud networking offers various options that might appear attractive to
a small company---options that they could never afford to build on their
own premises. However, it is important to consider that each service
adds complexity to the security profile of the organization, and they
will need security personnel to monitor all of the cloud services.

## Cloud security challenges

Since data is stored in the cloud and accessed over the internet,
several challenges arise:

- Misconfiguration is one of the biggest concerns. Customers of
  cloud-based services are responsible for configuring their own
  security environment. Oftentimes, they use out-of-the-box
  configurations that fail to address their specific security
  objectives.
- Cloud-native breaches are more likely to occur due to misconfigured
  services.
- Monitoring access might be difficult depending on the client and level
  of service.
- Meeting regulatory standards is also a concern, particularly in
  industries that are required by law to follow specific requirements
  such as HIPAA, PCI DSS, and GDPR.

Many other challenges exist besides these. [Burning Glass](https://www.burningglassinstitute.org/), a
leading labor market analytics firm, ranks cloud security among the most
in-demand skills in cybersecurity.

## Cloud security hardening

Hypervisor
: abstracts the host’s hardware from the operating software environment.
There are two types of hypervisors. Type one hypervisors run on the
hardware of the host computer. An example of a type one hypervisor is
VMware®'s ESXi. Type two hypervisors operate on the software of the host
computer. An example of a type two hypervisor is VirtualBox. Cloud
service providers (CSPs) commonly use type one hypervisors. CSPs are
responsible for managing the hypervisor and other virtualization
components. The CSP ensures that cloud resources and cloud environments
are available, and it provides regular patches and updates.
Vulnerabilities in hypervisors or misconfigurations can lead to virtual
machine escapes (VM escapes). A VM escape is an exploit where a
malicious actor gains access to the primary hypervisor, potentially the
host computer and other VMs. As a CSP customer, you will rarely deal
with hypervisors directly.

Baselining
: covers how the cloud environment is configured and set up. A baseline
is a fixed reference point that can be used to compare
changes made to a cloud environment. Proper configuration and setup can
greatly improve the security and performance of a cloud environment.
Examples of establishing a baseline in a cloud environment include:
restricting access to the admin portal of the cloud environment,
enabling password management, enabling file encryption, and enabling
threat detection services for SQL databases.

Cryptography in the cloud
: can be applied to secure data that is processed and stored in a cloud
environment. [Cryptography](/cryptography) uses encryption and
[secure key management systems](/key-distribution) to provide
data integrity and confidentiality. Cryptographic encryption is one of
the key ways to secure sensitive data and information in the cloud.

Cryptographic erasure
: is a method of erasing the encryption key for the encrypted data. When
destroying data in the cloud, more traditional methods of data
destruction are not as effective. Crypto-shredding is a newer technique
where the cryptographic keys used for decrypting the data are destroyed.
This makes the data undecipherable and prevents anyone from decrypting
the data. When crypto-shredding, all copies of the key need to be
destroyed so no one has any opportunity to access the data in the
future.

## More resources on cloud security

- [The U.K.’s National Cyber Security Centre](https://www.ncsc.gov.uk/collection/cloud/understanding-cloud-services/cloud-security-shared-responsibility-model)
  has a detailed guide for choosing, using, and deploying cloud services
  securely based on the shared responsibility model.
- [The Cloud Security Alliance®](https://cloudsecurityalliance.org/) is
  an organization dedicated to creating secure cloud environments. They
  offer access to cloud security-specific research, certification, and
  products to users with a paid membership.
- [CompTIA Cloud+](https://www.comptia.org/blog/your-next-move-cloud-security-specialist)
  is a certificate program designed to teach you the foundational skills
  needed to become a cloud security specialist.

## Shared responsibility model

The shared responsibility model states that the
CSP must take responsibility for security involving the cloud
infrastructure, including physical data centers, hypervisors, and host
operating systems. The company using the cloud service is responsible
for the assets and processes that they store or operate in the cloud.

The shared responsibility model ensures that both the CSP and the users
agree about where their responsibility for security begins and ends. A
problem occurs when organizations assume that the CSP is taking care of
security that they have not taken responsibility for. One example of
this is cloud applications and configurations. The CSP takes
responsibility for securing the cloud, but it is the organization’s
responsibility to ensure that services are configured properly according
to the security requirements of their organization.
