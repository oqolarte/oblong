---
title: "Own Web Server"
date: 2020-12-22T22:37:41+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "server", "web server", "homebrew server", "server in the basement", "debian as server", "openbsd as server"]
draft: false
---
## Status: On-going {.statusOnGoing}

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

I'm downloading the image from a Debian-based system, through the terminal, so most of the commands here are based on that.

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

### 3. Proceed with the Installation.

Insert the USB drive into the machine.
Boot from the USB drive.

On the prompt, select **(i)**nstall and answer the questions.

The default answers are sane.
Most of my choices are the default ones.
Yours may differ.

Below is an incomplete list of questions during the installation, that I put here to remind my FutureSelf of the choice I made:

DNS domain name? **araw.xyz**  
Do you want the X Window System to be started by xenodm(1)? **no[^xenodm]**  
Which disk contains the install media? **sd0[^sd0]**  
Directory does not contain SHA256.sig. Continue without verification? **yes**  

Reboot after installation.

Then login as root.

#### Enable `apmd(8)`

```
rcctl enable apmd
rcctl set apmd flags -a -z 7
rcctl start apmd
```

#### Add username to `/etc/doas.conf`

```
echo 'permit yourUserName` > /etc/doas.conf
```

Reboot to make the changes.

[^xenodm]: Since this is going to be a server, graphical user interface is not needed.

[^sd0]: The USB drive.
This might be different for every other machine.
At any point during the installation, type `?` to list the possible choices.

### Set up wi-fi and ethernet networks

Before doing anything else, we need to make sure that we are connected to the internet.
This is to update any firmwares (using `fw_update`) and patches (using `syspatch`).

If for some reason, you can't connect to the internet, there's still a way to install the needed firmwares, which will be discussed below.

#### Ethernet
Most OpenBSD developers would tell you to use ethernet when you have it.
It's reliable and secure.

Network interfaces are named by taking the shorthand version of the network card.

This laptop has `re(4)`, i.e. Realtek 8139C+/8169/816xS/811xS/8168/810xE 10/100/Gigabit Ethernet device.

#### Wi-fi
This laptop has wi-fi capabilities, but isn't immediately compatible due to firmware issues.

This laptop has `ath(4)`, i.e. Atheros IEEE 802.11a/b/g wireless network device with GPIO.

#### Installing the needed firmware (from another device)

Not everything works as expected.
Ethernet might not work out of the box.
Wi-fi is unlikely to work, too, if the firmwares aren't updated.
If you find yourself in this situation, there's another solution:
get the firmware files from another computer that's connected to the internet.

Then:

1. On your OpenBSD machine, list the needed firmware.
`fw_update` will determine this (you must be root).
In this laptop, the firmwares needed are `intel-firmware`, `athn-firmware`, and `inteldrm-firmware`.
1. On the other device (the one connected to the internet), go to http://firmware.openbsd.org and select the version you are installing.
Download the firmware files in your list to a USB drive **formatted as FAT32**.
(OpenBSD can't natively read ext4 or NTFS partitions.)
    1. There are different ways you can format a USB drive to FAT32, depending on the platform you're doing the formatting on. 
        If you're on a Debian-based system like I am, install the *dosfstools*.
        ```
        sudo apt install dosfstools
        ```
    1. Locate your USB drive by running this in terminal:
        ```
        lsblk
        ```
        In my case, it's `/dev/sdc` .
    1. Unmount the USB drive, because we can't format it when mounted:
        ```
        sudo umount /dev/sdc
        ```
    1. Create a new partition table, which we will determine to be `msdos`.
        ```
        sudo parted /dev/sdc --script -- mklabel msdos
        ```
    1. Specify that the whole drive must be of FAT32 file system, primary partition type:
        ```
        sudo parted /dev/sdb --script -- mkpart primary fat32 1MiB 100%
        ```
    1. Format the drive to FAT32:
        ```
        sudo mkfs.fat -F 32 -I /dev/sdc
        ```
    1. (Optional) Check if your device has been partitioned correctly:
        ```
        sudo parted /dev/sdc --script print
        ```
1. Insert the USB drive to the OpenBSD machine.
As root, enter `diskutil list`.
Your USB drive will appear to have several partitions, e.g. sd1c.
1. Create a mount point under /mnt (as root):
        ```
        mkdir /mnt/usb
        ```
1. Mount the USB (as root):
        ```
        mount /dev/sd1i /mnt/usb
        ```
1. Once mounted, install the firmware manually (as root):
        ```
        fw_update -p /mnt/usb
        ```
1. Reboot

### Optional things

In this laptop, I'm going install several binaries from the ports, namely **git** (version control system), **neovim** (text editor), and **rsync** (synchronization program)

To install in one go, enter as root:
```
pkg_add git neovim rsync
```

## Web Server on OpenBSD

### Configure httpd(8)

### Enable HTTPS with acme-client(1) and Let's Encrypt

### Add HTTP security headers with relayd(8)
