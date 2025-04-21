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

Github repo: https://github.com/virustotal/yara

## Yara rules

More info in the docs: https://yara.readthedocs.io/en/stable/writingrules.html

Every `yara` command needs two valid arguments:

1) The rule file we create
2) Name of file, directory, or process ID to use the rule for.

Every rule must have a name and condition. For example, to use
"myrule.yar" on directory "some directory", we would use the following
command: `yara myrule.yar somedirectory`

## Yara tools

- More curated list of tools, including commercial ones, for Yara:
  https://github.com/InQuest/awesome-yara
- [LOKI](https://github.com/Neo23x0/Loki) is free and open-source
  [IoC](/indicators-of-compromise) scanner
- [THOR Lite](https://www.nextron-systems.com/thor-lite/) is another IoC
  and Yara scanner from the same developer as LOKI, but more geared
  towards corporate customers.
- [YAYA](https://www.eff.org/deeplinks/2020/09/introducing-yaya-new-threat-hunting-tool-eff-threat-lab)
  "helps researchers manage multiple YARA rule repositories... by importing
  a set of high-quality YARA rules and then lets researchers add their
  own rules, disable specific rulesets, and run scans of files. YAYA
  only runs on Linux systems for now."
