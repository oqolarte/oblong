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

{{< figure src="/image/network.png" alt="A diagram showing how multiple devices connected in a network" caption="A router connects to the internet through a modem, which is provided by your internet service provider (ISP). The firewall is a security device that monitors incoming and outgoing traffic on your network. The router then directs traffic to the devices on your home network, which can include computers, laptops, smartphones, tablets, printers, and other devices. You can imagine here that the server is a file server. All devices on this network can access the files in this server. This diagram also includes a switch which is an optional device that can be used to connect more devices to your network by providing additional ports and Ethernet connections. Additionally, there are 2 routers connected to the switch here for load balancing purposes which will improve the performance of the network." >}}

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

A **cloud network** is a collection of servers or computers that stores
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

## Network Communication

Data packet
: a basic unit of information that travels from one device to another
within a network. Includes:
    - Header: contains internet protocol (IP) address, the media access
      control (MAC) address of the destination device, the protocol
      number, size of packet
    - Body: contains the messsage that needs to be transmitted to the
      receiving device
    - Footer: signals to the receiving device that the packet is
      finished

Bandwidth
: the amount of data a device receives every second. Could also be used
to analyze a network's performance.

Speed
: the rate at which data packets are received or downloaded.

Packet sniffing
: the practice of capturing and inspecting data packets across a
network.

### TCP/IP model

TCP/IP stands for transmission control protocol and internet protocol. It
is the standard model used in network communication.

TCP
: is an internet communication protocol that allows two devices to form
a connection and stream data.

IP
: a set of standards used for routing and addressing data packets as
they travel between devices on a network.

Port
: a software-based location that organizes the sending and receiving of
data between devices on a network. Common port numbers:
    - Port 25: email
    - Port 443: secure internet [communication](/communication)
    - Port 20: large file transfers

On the other hand,
TCP/IP model is a framework used to visualize how data is organized and
transmitted across the network. It has 4 layers:

1. **Network access layer** deals with creation of data packets and
   their transmission across a network. This includes hardware devices
   connected to physical cables and switches that direct data to its
   destination.
2. **Internet layer** is where IP addresses are attached to data packets
   to indicate the location of the sender and receiver. The internet
   layer also focuses on how networks connect to each other. Some common
   protocols that operate in this layer:
       - Internet Protocol (IP): sends the data packets to the correct
         destination and relies on the Transmission Control
         Protocol/User Datagram Protocol (TCP/UDP) to deliver them to
         the corresponding service. IP packets allow communication
         between two networks. They are routed from the sending network
         to the receiving network. TCP in particular retransmits any
         data that is lost or corrupt.
       - Internet Control Message Protocol (ICMP) shares error
         information and status updates of data packets. This is useful
         for detecting and troubleshooting network errors. The ICMP
         reports information about packets that were dropped or that
         disappeared in transit, issues with network connectivity, and
         packets redirected to other routers.
3. **Transport layer** includes protocols to control the flow of traffic
   across a network. These protocols permit or deny communication with
   other devices and include information about the status of the
   connection.
       - Transmission Control Protocol (TCP) ensures that data is
         reliably transmitted to the destination service. TCP contains
         the port number of the intended destination service, which
         resides in the TCP header of a TCP/IP packet.
       - User Datagram Protocol (UDP) is a connectionless protocol that
         does not establish a connection between devices before
         transmissions. It is used by applications that are not
         concerned with the reliability of the transmission. Data sent
         over UDP is not tracked as extensively as data sent using TCP.
         Because UDP does not establish network connections, it is used
         mostly for performance sensitive applications that operate in
         real time, such as video streaming.
4. **Application layer** has protocols determine how the data packets
   will interact with receiving devices. Functions that are organized at
   application layer include file transfers and email services. Some
   common protocols used in this layer are:
       - Hypertext transfer protocol (HTTP)
       - Simple mail transfer protocol (SMTP)
       - Secure shell (SSH)
       - File transfer protocol (FTP)
       - Domain name system (DNS)

### OSI Model

OSI stands for Open Systems Interconnection. The OSI model is a
standardized concept that describes the seven layers computers use to
communicate and send data over the network.

- **Layer 7: Application layer** includes all of the networking
  protocols that software applications use to connect a user to the
  internet.
- **Layer 6: Presentation layer** adds to and replaces data with formats
  that can be understood by applications (layer 7) on both sending and
  receiving systems. Some formatting functions that occur at layer 6
  include [encryption](/cryptography), compression, and confirmation
  that the character code set can be interpreted on the receiving
  system.
- **Layer 5: Session layer** keeps the session open while data is being
  transferred and terminate the session once the transmission is
  complete. The session layer is also responsible for activities such as
  authentication, reconnection, and setting checkpoints during a data
  transfer. If a session is interrupted, checkpoints ensure that the
  transmission picks up at the last session checkpoint when the
  connection resumes. Sessions include a request and response between
  applications.
- **Layer 4: Transport layer** handles the speed of data transfer, flow
  of the transfer, and breaking data down into smaller segments to make
  them easier to transport. Segmentation is the process of dividing up a
  large data transmission into smaller pieces that can be processed by
  the receiving system. These segments need to be reassembled at their
  destination so they can be processed at the session layer (layer 5).
  The speed and rate of the transmission also has to match the
  connection speed of the destination system.
- **Layer 3: [Network layer](/network-layer)** oversees receiving the frames from the data
  link layer (layer 2) and delivers them to the intended destination.
  The intended destination can be found based on the address that
  resides in the frame of the data packets. Data packets allow
  communication between two networks. These packets include IP addresses
  that tell routers where to send them. They are routed from the sending
  network to the receiving network.
- **Layer 2: Data link layer** is home to switches on the local network
  and network interface cards on local devices.
- **Layer 1: Physical layer** corresponds to the physical hardware
  involved in network transmission. Hubs, modems, and the cables and
  wiring that connect them are all considered part of the physical
  layer. To travel across an ethernet or coaxial cable, a data packet
  needs to be translated into a stream of 0s and 1s. The stream of 0s
  and 1s are sent across the physical wiring and cables, received, and
  then passed on to higher levels of the OSI model.

### TCP/IP vs OSI

Network and security professionals use the OSI model to communicate with
each other about potential sources of problems or security threats when
they occur.  Network engineers and network security analysts use the
TCP/IP and OSI models to conceptualize network processes and communicate
the location of disruptions or threats.

### IP addresses

IP address is a unique string of characters that identifies a location
of a device on the internet. Can either be public or private. Has two
types:

- IP version 4 (IPv4)
    - written as four, 1, 2, or 3-digit numbers separated by a decimal
      point. In the early days of the internet, IP addresses were all
      IPV4.
    - Example: 19.117.63.126
- IP version 6 (IPv6)
    - made up of 32 characters. The length of the IPv6 address will
      allow for more devices to be connected to the internet without
      running out of addresses as quickly as IPv4.
    - Example: 684D:1111:222:3333:4444:5555:6:77
