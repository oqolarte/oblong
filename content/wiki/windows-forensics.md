---
title: "Computer Forensics for Windows"
date: 2025-03-26
draft: false
math: false
---

Microsoft Windows is the most used desktop [operating system](/OS). It
is important to know how to perform [forensicanalysis](/digital-forensics)
on it.

{{< toc >}}

## Windows Registry

The Windows Registry is a collection of databases of system's
configuration data, which can be about:
- the hardware
- the software
- the user's information
- data about the recently used files, programs used, or connected
  devices

The Windows registry consists of Keys and Values. Running `regedit.exe` opens the Registry Keys. Registry Values are the data stored in these Registry Keys.

A [**Registry Hive**](https://learn.microsoft.com/en-us/windows/win32/sysinfo/registry-hives)
is a group of Keys, subkeys, and values stored in a single file on the
disk.

For more info on Windows registry keys, see [Windows registry information for advanced users](https://learn.microsoft.com/en-us/troubleshoot/windows-server/performance/windows-registry-advanced-users).
