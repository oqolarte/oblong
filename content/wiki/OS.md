---
title: "Operating System"
date: 2024-07-19
draft: false
math: false
---

The operating system (OS) is the interface between the hardware
(physical parts) of the computer and the human user.
OS helps us use computers more efficiently.

The OS handles resource and memory management to ensure the limited
capacity of the computer system is used where it is needed most. If a
computer is running slowly, a [cybersecurity analyst](/cybersecurity)
might discover it's allocating resources to [malware](/malware).

OS can also run on [virtual machines](/virtual-machine).

## Requests to the OS

### Booting

When you boot, or turn on, the [computer](/computer), either a BIOS or
UEFI microchip is activated. The **Basic Input/Output System (BIOS)** is
a microchip that contains loading instructions for the computer and is
prevalent in older systems. The **Unified Extensible Firmware Interface
(UEFI)** is a microchip that contains loading instructions for the
computer and replaces BIOS on more modern systems.

The BIOS and UEFI chips both perform the same function for booting the
computer. BIOS was the standard chip until 2007, when UEFI chips
increased in use. Now, most new computers include a UEFI chip. UEFI
provides enhanced [security features](/security).

The BIOS or UEFI microchips contain a variety of loading instructions
for the computer to follow. For example, one of the loading instructions
is to verify the health of the computer’s hardware.

The last instruction from the BIOS or UEFI activates the bootloader. The
bootloader is a software program that boots the operating system. Once
the operating system has finished booting, your computer is ready for
use.

### Completing a task

After booting, completing a task on a computer is a four-part process.

![Shows a process that moves from user to application to operating systems and finally to hardware](/image/task-os.png)

1. The **user** initiates the process by having something they want to
   accomplish on the computer.
2. The **application** is the software program that users interact with
   to complete a task. For example, if you want to calculate something,
   you would use the calculator application. If you want to write a
   report, you would use a word processing application.
3. The **operating system** receives the user’s request from the
   application. It’s the operating system’s job to interpret the request
   and direct its flow. In order to complete the task, the operating
   system sends it on to applicable components of the hardware.
4. The **hardware** is where all the processing is done to complete the
   tasks initiated by the user. For example, when a user wants to
   calculate a number, the CPU figures out the answer. As another
   example, when a user wants to save a file, another component of the
   hardware, the hard drive, handles this task.

After the work is done by the hardware, it sends the output back through
the operating system to the application so that it can display the
results to the user.
