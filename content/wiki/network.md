---
title: "Network (computer)"
date: 2024-06-25
draft: false
math: false
---

## What are networks?

A network is the overall infrastructure that allows a group of connected
devices (like [computers](/computer), laptop, cell phones, and smart
devices) to communicate with each other over network cables, or wireless
connections.

Devices need to find each other on a network to establish
communications. These devices will use unique addresses, or identifiers,
to locate each other. The addresses will ensure that communications
happens with the right device. These are called the IP and MAC
addresses.

{{< figure src="/image/network.png" alt="A diagram showing how multiple devices connected in a network" caption="a router connects to the internet through a modem, which is provided by your internet service provider (ISP). The firewall is a security device that monitors incoming and outgoing traffic on your network. The router then directs traffic to the devices on your home network, which can include computers, laptops, smartphones, tablets, printers, and other devices. You can imagine here that the server is a file server. All devices on this network can access the files in this server. This diagram also includes a switch which is an optional device that can be used to connect more devices to your network by providing additional ports and Ethernet connections. Additionally, there are 2 routers connected to the switch here for load balancing purposes which will improve the performance of the network." >}}

Network security is also important because we want to make sure that our
network systems are safe and resilient.

### Types of networks

Devices can communicate on two types of networks:
a local area network, also known as a LAN,
and a wide area network, also known as a WAN.

A **local area network**, or LAN,
spans a small area like an office building, a school, or a home.
For example, when a personal device like your cell phone or tablet
connects to the WIFI in your house, they form a LAN.
The LAN then connects to the [internet](/internet).

A **wide area network** or WAN spans a large geographical area like a
city, state, or country. You can think of the internet as one big WAN.
An employee of a company in San Francisco can communicate and share
resources with another employee in Dublin, Ireland over the WAN.

A **cloud network** is a collectino of servers or computers that stores
resources and data in remote data centers that can be accessed via the
internet.

## Network tools

Firewall
: a network security device that monitors traffic to or from your
network. Firewalls can also restrict specific incoming and outgoing
network traffic. Firewalls often reside between the secured and
controlled internal network and the untrusted network resources outside
the organization, such as the internet. They are just one line of
defense in the [cybersecurity](/cybersecurity) landscape.

Server
: provide information and services for devices like computers, smart
home devices, and smartphones on the network. The devices that connect
to a server are called clients. The following graphic outlines this
model, which is called the client-server model. 

{{< figure src="/image/server.png" alt="A diagram showing client-server model" caption="In this model, clients send requests to the server for information and services. The server performs the requests for the clients. Common examples include DNS servers that perform domain name lookups for internet sites, file servers that store and retrieve files from a database, and corporate mail servers that organize mail for a company." >}}

Hub
: a network device that broadcasts information to every device on the
network. Hubs additionally repeat all information out to all ports. From
a [security](/security) perspective, this makes hubs vulnerable to eavesdropping. For
this reason, hubs are not used as often on modern networks; most
organizations use switches instead. Hubs are more commonly used for a
limited network setup like a home office.

Switch
: makes connections between specific devices on a network by sending and
receiving data between them. A switch is more intelligent than a hub. It
only passes data to the intended destination. This makes switches more
secure than hubs, and enables them to control the flow of traffic and
improve network performance. Switches maintain a MAC address table that
matches MAC addresses of devices on the network to port numbers on the
switch and forwards incoming data packets according to the destination
MAC address. Switches are a part of the data link layer in the TCP/IP
model.

Router
: a network device that connects multiple networks together. In the
TCP/IP model, routers are a part of the network layer. The IP address of
the destination network is contained in the IP header. The router reads
the IP header information and forwards the packet to the next router on
the path to the destination. This continues until the packet reaches the
destination network. Routers can also include a firewall feature that
allows or blocks incoming traffic based on information in the
transmission. This stops malicious traffic from entering the private
network and damaging the local area network.

Modem
: a device that connects your router to the internet, and brings
internet access to the LAN. Modems receive transmissions or digital
signals from the internet via internet service provider's (ISP)
telephone lines or coaxial cables, and translate them into analog
signals that can travel through the physical connection provided by your
ISP. Usually, modems connect to a router that takes the decoded
transmissions and sends them on to the local network.

Wireless access point
: sends and receives digital signals over radio waves creating a
wireless network. Devices with wireless adapters connect to the access
point using Wi-Fi. Wi-Fi refers to a set of standards that are used by
network devices to communicate wirelessly. Wireless access points and
the devices connected to them use Wi-Fi protocols to send data through
radio waves where they are sent to routers and switches and directed
along the path to their final destination.

![Diagram of Wireless Access Point](/image/wap.png)

Network tools such as hubs, switches,
routers, and modems are physical devices.
However, many functions performed by
these physical devices can be
completed by virtualization tools.

Virtualization tools
: are pieces of software that perform network operations
