---
title: "Open systems interconnection (OSI) model"
date: 2026-05-17
draft: false
math: false
---

OSI model provides a framework dictating how all networked devices will
send, receive and interpret data in a [network](/network).

{{< toc >}}

## Benefits

One of the main benefits of the OSI model is that devices can have
different functions and designs on a network while communicating with
other devices. Data sent across a network that follows the uniformity of
the OSI model can be understood by other devices.

## Layers

The OSI model consists of seven layers which are illustrated in the
diagram below. Each layer has a different set of responsibilities and is
arranged from Layer 7 to Layer 1.

### Layer 1 - Physical

This layer references the physical components of the hardware used in
networking. Devices use electrical signals to transfer data between each
other in a binary numbering system (1's and 0's)

### Layer 2 - Data link

The data link layer focuses on the physical addressing of the
transmission. It receives a packet from the network layer (including the
[IP address](/ip-address) for the remote computer) and adds
("encapsulates") in the physical [MAC](/MAC-address) (Media Access
Control) address of the receiving endpoint. Inside every network-enabled
[computer](/computer) is a Network Interface Card (NIC) which comes with
a unique MAC address to identify it.

MAC addresses are set by the manufacturer and literally burnt into the
card; they can’t be changed, although they can be spoofed. When
information is sent across a network, it’s actually the physical address
that is used to identify where exactly to send the information.

Additionally, it’s also the job of the data link layer to present the
data in a format suitable for transmission.

### Layer 3 - [network layer](/network-layer)

Network layer is where routing and re-assembly of data (packet) takes
place.

Whilst some protocols at this layer determine exactly what is the
"optimal" path that data should take to reach a device, we should only
know about their existence at this stage of the networking module.
Briefly, these protocols include OSPF (Open Shortest Path First) and RIP
(Routing Information Protocol). The factors that decide what route is
taken is decided by the following:

- What path is the shortest? i.e., has the least amount of devices that
  the packet needs to travel across.
- What path is the most reliable? i.e., have packets been lost on that
  path before?
- Which path has the faster physical connection? i.e., is one path using
  a copper connection (slower) or a fibre (considerably faster)?

### Layer 4 - transport

When data is sent between devices, it follows one of two different
protocols that are decided based upon several factors:

- TCP (transmission control protocol): reserves a constant connection
  between the two devices for the amount of time it takes for the data
  to be sent and received. Not only this, but TCP incorporates error
  checking into its design. Error checking is how can guarantee that
  data sent from the small chunks in the session layer (layer 5) has
  then been received and reassembled in the same order. Used in cases
  like file sharing, internet browsing, or sending an email.
- UDP (user datagram protocol): Any data that gets sent via UDP is sent
  to the computer whether it gets there or not. There is no
  synchronisation between the two devices or guarantee. UDP is faster
  than TCP because of this. Useful in situations where there are small
  pieces of data being sent

### Layer 5 - session layer

Once data has been correctly translated or formatted from the
presentation layer (layer 6), the session layer (layer 5) will begin to
create and maintain the connection to other computer for which the data
is destined. When a connection is established, a session is created.
Whilst this connection is active, so is the session.

The session layer is also responsible for closing the connection if it
hasn't been used in a while or if it is lost. Additionally, a session
can contain "checkpoints," where if the data is lost, only the newest
pieces of data are required to be sent, saving bandwidth. 

What is worthy of noting is that sessions are unique---meaning that data
cannot travel over different sessions, but in fact, only across each
session instead.

### Layer 6 - presentation

This layer acts as a translator for data to and from the application
layer (layer 7). The receiving computer will also understand data sent
to a computer in one format destined for in another format. For example,
when you send an email, the other user may have another email client to
you, but the contents of the email will still need to display the same.

[Security](/security) features such as data encryption (like HTTPS when visiting a
secure site) occur at this layer.

### Layer 7 - application

The application layer of the OSI model is the layer that you will be
most familiar with. This familiarity is because the application layer is
the layer in which protocols and rules are in place to determine how the
user should interact with data sent or received.

Everyday applications such as email clients, browsers, or file server
browsing software such as FileZilla provide a friendly, Graphical User
Interface (GUI) for users to interact with data sent or received. Other
protocols include DNS (Domain Name System), which is how website
addresses are translated into IP addresses.
