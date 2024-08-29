---
title: "Security zones"
date: 2024-07-03
draft: false
math: false
---

Security zones are a part of a [security](/security) technique called
network segmentation that divides the [network](/network) into segments.
Each network segment has its own access permissions and security rules.
Security zones control who can access different segments of a network.
Security zones act as a barrier to internal networks, maintain
[privacy](/privacy) within corporate groups, and prevent issues from
spreading to the whole network. One example of network segmentation is a
hotel that offers free public Wi-Fi. The unsecured guest network is kept
separate from another encrypted network used by the hotel staff.

Additionally, an organization's network can be divided into subnetworks,
or [subnets](/subnetting), to maintain privacy for each department in a organization.

## Types

1. **Uncontrolled zone** -- any network outside of the organization's
   control, like the [internet](/internet).
2. **Controlled zone** -- a subnet that protects the internal network
   from the uncontrolled zone. Contains several areas within it:
    - Demilitarized zone (DMZ) -- contains public-facing services that
      can access the internet. This includes web servers, proxy servers
      that host websites for the public, and DNS servers that provide IP
      addresses for internet users. It also includes email and file
      servers that handle external communications. The DMZ acts as a
      network perimeter to the internal network.
    - Internal network -- contains private servers and data that the
      organization needs to protect. [Proxy servers](/proxy-server) help secure internal
      networks.
    - Restricted zone -- found within internal network, this zone
      protects highly confidential information that is only accessible
      to employees with certain privileges.
