---
title: "Own Web Server"
date: 2020-12-22T22:37:41+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "server", "web server", "homebrew server", "server in the basement", "debian as server", "openbsd as server"]
draft: false
---
## Status: Open {.statusOpen}

I want to host this very site you're in in a server that I own.

Simply put, a server is just like any other computer, with lots of functionalities, like providing services or serving files to other computers (clients, as they are called in this context) that access it.

In my use case, I will use it to host the HTML files of this site, and serve it to you, visitors, through your device/s (clients).

The server will actually be an old laptop that's just lying around here.
And it's not actually mine.
The [MSI Wind Netbook](https://www.laptopmag.com/reviews/laptops/msi-wind-u123) belongs to Isya, and I got her permission to use it for this project.

## Specifications of the Machine
- Bluetooth 2.0
- CPU: 1.66-GHZ Intel Atom N280
- Display size: 10.2"
- Graphics card: Intel GMA 950
- Hard drive size: 80Gb
- Hard drive speed: 5,400rpm
- Hard drive type: SATA hard drive
- Native resolution: 1024x600
- Operating system (OS, default): MS Windows XP Home
- Ports (excluding USB): VGA, Microphone, Headphone, Ethernet
- RAM: 2Gb
- Weight: 1.45 kg (3.2 lbs)
- Wifi: 802.11b/g

### It's old...

By today's standards, it's an old machine.
If the numbers don't make sense to you, just look at the OS:
it shipped with Windows XP!

Back in the day, Windows XP received many praises for its performance.
These days, though, it's vulnerable to a lot of cyberattacks, more so that [Microsoft has stopped supporting it since 2014](www.microsoft.com/en-us/microsoft-365/windows/end-of-windows-xp-support).
And yet, some institutions still use it.
If their computers are connected to the Internet, they are exposed to black hat hackers.

{{< figure src="/image/msi-wind.jpeg" alt="screenshot of the laptop's system properties" caption="And now, a crappy photo of the laptop's system properties" >}}

### ... but works fine.

Just because it's old doesn't mean it's no longer valuable.
For its age, its quick to boot up.
It would likely improve if and when the hard drive is replaced with a solid state drive, although, doing so is really unnecessary.

In its current state, it "runs out of breath" trying to run modern applications with its very limiting hardware.

The next best thing is to refurbish it into something that isn't resource intensive. 
This project will also be a learning process for me on how to manage my own small server.

## A suitable operating system

To many system administrators (sysadmin), a suitable operating system (OS) could mean many different things.

I'm no sysadmin by profession, so the OS I want running in this homebrew server shall be stable, requires minimal maintenance, and is (relatively) easy to set up.

It shouldn't require much effort, knowing that my use case---serving static files of small personal website---is simple enough.

At the moment, I'm considering these two OS, because they still have support for 32-bit architectures (which this laptop has), and meet my requirements above:
- [Debian](https://www.debian.org) (GNU+Linux)
- [OpenBSD](https://www.openbsd.org) (BSD)

I also have experience in using both, albeit in a 64-bit architecture.

### Using OpenBSD as a server
OpenBSD is a fully functional, Unix-like OS based on Berkeley Networking Release 2 (Net/2) and 4.4BSD-Lite.

For now, I choose OpenBSD as a server because it's simpler to set up.
As a result of its simplicity, it's also hailed as one of the most secure OS out there.

Before anything else, a disclaimer:
While I'll do my best to update this document, assume that the most recent documentation there is can be found over at the [OpenBSD website](https://openbsd.org).
Their [manual pages](https://man.openbsd.org) contain the details needed to operate a machine running on OpenBSD, and is entirely available offline on a base install.

## Installing OpenBSD on bare metal

If you're new to the system, I highly recommend to go over the [OpenBSD FAQ - Installation Guide](https://www.openbsd.org/faq/faq4.html) at least once.

I'm installing from a Debian-based system, through the terminal, so most of the commands here are based on that.

### 1. Download the installer

There are mirrors[^mirror] from which you can download the installer.
They are found [here](https://www.openbsd.org/ftp.html).
Always choose the one nearest your location to reduce download time.

[^mirror]: It's just a server that provides the exact copy of data from another server.
Usually to provide a means of redundancy.

```
curl -OJ http://mirror.rise.ph/pub/OpenBSD/6.8/i386/install68.img
```

### 2. Create Install Media in Flash Drive

Plug in the USB stick.
The following command assumes that the disk is recognized as `sdc1`.
Check with `dmesg`, `df -h`, or `lsblk` commands, as root if need be.

```
sudo dd if=install*.img of=/dev/sdc1 bs=1M
```
The `dd` utility copies the standard input `if` (or input file) to the standard output `of` (or output file, which, in this case, is the USB drive).
`bs` stands for block size, and we set it to 1 megabyte.

In my case, the successful output is:
```
450+0 records in
450+0 records out
471859200 bytes (472 MB, 450 MiB) copied, 31.9492 s, 14.8 MB/s
```


### Set up wi-fi and ethernet networks

## Web Server on OpenBSD

### Configure httpd(8)

### Enable HTTPS with acme-client(1) and Let's Encrypt

### Add HTTP security headers with relayd(8)
