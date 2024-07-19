---
title: "Virtual machine"
date: 2024-07-19
draft: false
math: false
---

A **virtual machine** (VM) is a virtual version of a physical
[computer](/computer). Virtual machines are one example of
virtualization. **Virtualization** is the process of using software to
create virtual representations of various physical machines. The term
“virtual” refers to machines that don’t exist physically, but operate
like they do because their software simulates physical hardware. Virtual
systems don’t use dedicated physical hardware. Instead, they use
software-defined versions of the physical hardware. This means that a
single virtual machine has a virtual CPU, virtual storage, and other
virtual hardware. Virtual systems are just code.

You can run multiple virtual machines using the physical hardware of a
single computer. This involves dividing the resources of the host
computer to be shared across all physical and virtual components. For
example, Random Access Memory (RAM) is a hardware component used for
short-term memory. If a computer has 16GB of RAM, it can host three
virtual machines so that the physical computer and virtual machines each
have 4GB of RAM. Also, each of these virtual machines would have their
own [operating system](/OS) and function similarly to a typical
computer.

## Benefits

### Security

Virtualization can provide an isolated environment, or a sandbox, on the
physical host machine. When a computer has multiple virtual machines,
these virtual machines are “guests” of the computer. Specifically, they
are isolated from the host computer and other guest virtual machines.
This provides a layer of [security](/security), because virtual machines
can be kept separate from the other systems. For example, if an
individual virtual machine becomes infected with [malware](/malware), it
can be dealt with more securely because it’s isolated from the other
machines. A security professional could also intentionally place malware
on a virtual machine to examine it in a more secure environment.

Note: Although using virtual machines is useful when investigating
potentially infected machines or running malware in a constrained
environment, there are still some risks. For example, a malicious
program can escape virtualization and access the host machine. This is
why you should never completely trust virtualized systems.

## Efficiency

Using virtual machines can also be an efficient and convenient way to perform security tasks. You can open multiple virtual machines at once and switch easily between them. This allows you to streamline security tasks, such as testing and exploring various applications.

## Managing VMs

Virtual machines can be managed with a software called a hypervisor.
**Hypervisors** help users manage multiple virtual machines and connect
the virtual and physical hardware. Hypervisors also help with allocating
the shared resources of the physical host machine to one or more virtual
machines.

One hypervisor that is useful for you to be familiar with is the
Kernel-based Virtual Machine (KVM). [KVM](https://www.linux-kvm.org/) is
an open-source hypervisor that is supported by most major Linux
distributions. It is built into the Linux kernel, which means it can be
used to create virtual machines on any machine running a Linux operating
system without the need for additional software.

## Other forms of virtualization

In addition to virtual machines, there are other forms of
virtualization. Some of these virtualization technologies do not use
operating systems. For example, multiple virtual servers can be created
from a single physical server. Virtual networks can also be created to
more efficiently use the hardware of a physical network.
