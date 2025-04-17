---
title: "Yara"
date: 2025-04-17
draft: false
math: false
---

Notes on applications and language that is Yara for threat intelligence,
forensics, and threat hunting.

{{< toc >}}

## What is Yara?

Yara (Yet another ridiculous acronym) is a tool used in many
[infosec](/infosec)-adjacent fields. It is able to identify information
based on both binary and textual patterns, like hexadecimal and strings
contained within a file. This is relevant, because [malware](/malware)
uses strings to store textual data. For example, a seemingly random
string of text might actually be a Bitcoin wallet for a ransomware; or
it seemingly string of integers with decimal points might be an
[IP address](/ip-address) of the [Command and Control](/c2) server of a botnet.
