---
title: "Proxy Servers"
date: 2024-07-03
draft: false
math: false
---

Proxy Server is a server that fulfills the requests of a client by
forwarding them on to other servers. The proxy server is a dedicated
server that sits between the [internet](/internet) and the rest of the
[network](/network). When a request to connect to the network comes in
from the internet, the proxy server will determine if the connection
request is safe. The proxy server is a public IP address that is
different from the rest of the private network. This hides the private
network's IP address from malicious actors on the internet and adds a
layer of [security](/security).

A proxy server can also be used to block unsafe websites that users
aren't allowed to access on an organization's network. A proxy server
uses temporary memory to store data that's regularly requested by
external servers. This way, it doesn't have to fetch data from an
organization's internal servers every time. This enhances security by
reducing contact with the internal server.

## Types

**Forward proxy server** regulates and restricts a person with access to
the internet. The goal is to hide a user's IP address and approve all
outgoing requests. In the context of an organization, a forward proxy
server receives outgoing traffic from an employee, approves it, and then
forwards it on to the destination on the internet.

**Reverse proxy server** regulates and restricts the internet access to
an internal server. The goal is to accept traffic from external parties,
approve it, and forward it to the internal servers. This setup is useful
for protecting internal web servers containing confidential data from
exposing their IP address to external parties.

**Email proxy server** is another valuable security tool.
It filters spam email by verifying whether a sender's address was forged.
This reduces the risk of phishing attacks that impersonate people known to
the organization.
