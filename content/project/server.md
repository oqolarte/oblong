---
title: "Own Web Server"
date: 2020-12-22T22:37:41+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "server", "web server", "homebrew server", "server in the basement", "debian as server", "openbsd as server"]
draft: false
---
## Status: Closed {.statusClosed}

As of the last update,
I'm putting this project to a halt until further notice.

For now, I'll believe the experts:
servers *on-prem* (i.e. in our home) may not be a good idea at the moment.

Below the line is an archive of my notes, incomplete as is.

---

I want to host this site (`ohio.araw.xyz`) in a server that I physically have with me.

Simply put, a server is just like any other computer, 
with lots of functionalities, like providing services or serving files to other computers 
(clients, as they are called in this context) that access it.

In my use case, I will use it to host the HTML files of this site, 
and serve it to you, visitors, through your device/s (clients).

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
If their computers are connected to the Internet, 
they are exposed to black hat hackers.

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

It shouldn't require much effort, 
knowing that my use case---serving static files of small personal website---is simple enough.

At the moment, I have considered these two OS, 
because they still have support for 32-bit architecture 
(which this laptop has), and meet my requirements above:
- [Debian](https://www.debian.org) (GNU/Linux)
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

I downloaded the image from a Debian-based system, through the terminal, so most of the commands here are based on that.

### 1. Download the installer

There are mirrors[^mirror] from which to download the installer.
They are found [here](https://www.openbsd.org/ftp.html).
I chose the nearest location to reduce download time.

[^mirror]: It's just a server that provides the exact copy of data from another server.
Usually to provide a means of redundancy.

```shell
curl -OJ http://mirror.rise.ph/pub/OpenBSD/6.9/i386/install69.img
```

### 2. Create Install Media in Flash Drive

Plug in the USB stick.
The following command assumes that the disk is recognized as `sdc1`.
Check with `dmesg`, `df -h`, or `lsblk` commands, as root if need be.

```shell
sudo dd if=install*.img of=/dev/sdc1 bs=1M
```
The `dd` utility copies the standard input `if` (or input file) to the standard output `of` (or output file, which, in this case, is the USB drive).
`bs` stands for block size, and we set it to 1 megabyte.

In my case, the successful output is:
```shell
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

Below is an incomplete list of questions during the installation, 
that I put here to remind my FutureSelf of the choice I made:

DNS domain name? **araw.xyz**  
Do you want the X Window System to be started by xenodm(1)? **no[^xenodm]**  
Which disk contains the install media? **sd0[^sd0]**  
Directory does not contain SHA256.sig. Continue without verification? **yes**  

Reboot after installation.

Then login as root.

#### Enable `apmd(8)`

```shell
rcctl enable apmd
rcctl set apmd flags -a -z 7
rcctl start apmd
```

[`apmd`](https://man.openbsd.org/apmd) is Advanced Power Management Daemon.  
`-a` option means BIOS-initiated suspend or standby requests are ignored if the system is connected to line current (plugged) and not running from batteries.  
`-z` option means to automatically *suspend* the system if no AC is connected and the estimated battery life is equal or below `7` percent.

#### Add username to `/etc/doas.conf`

```shell
echo 'permit yourUserName' > /etc/doas.conf
```

Reboot to make the changes.

[^xenodm]: Since this is going to be a server, I don't need graphical user interface.

[^sd0]: The USB drive.
This might be different for every other machine.
At any point during the installation, type `?` to list the possible choices.

### Set up wi-fi and ethernet networks

Before doing anything else, it's important to be connected to the internet.
This is to update any firmwares (using `fw_update`) and patches (using `syspatch`).

#### Ethernet
Most OpenBSD developers recommend using ethernet if it's available.
It's reliable and secure.

Network interfaces are named by taking the shorthand version of the network card.

This laptop has `re(4)`, i.e. Realtek 8139C+/8169/816xS/811xS/8168/810xE 10/100/Gigabit Ethernet device.

To set it up, I created a file `/etc/hostname.re0` using vi[^vi], and put these two lines in:

```shell
dhcp
up
```

[^vi]: vi is a text editor already present in the base install of OpenBSD.
I'm familiar with it, but ultimately I'll use (neo)vim.

To make the file `/etc/hostname.re0` belong to the `root` (the super user) and `wheel`, and to set the necessary permissions, I entered these commands as root:

```shell
chown root:wheel /etc/hostname.re0
chmod 0640 /etc/hostname.re0
```

Activate the ethernet connection by entering this as root:
```shell
sh /etc/netstart
```

If successful, it's possible now to update the firmwares.
Enter as root:
```shell
fw_update
```

#### Wi-fi
This laptop has wi-fi capabilities, but isn't immediately compatible due to firmware issues.
As mentioned, firmware can be updated by `fw_update` if ethernet connection was successful.
Otherwise, skip to the next section to get the firmware updates.

This laptop has `ath(4)`, i.e. Atheros IEEE 802.11a/b/g wireless network device with GPIO.

To set up the wifi, I created a file `/etc/hostname.athn0` as root and input these following lines:
```shell
nwid myHomeWiFi wpakey p@s&w0rD
dhcp
up
```

Like with the ethernet, specify that the file belongs to `root` and `wheel`, set the permissions, and activate the connection by entering the following lines, as root:
```shell
chown root:wheel /etc/hostname.athn0
chmod 0640 /etc/hostname.athn0

sh /etc/netstart
```

#### Installing the needed firmware (from another device)

Not everything might work as expected.
Ethernet might not work out of the box.
Wi-fi is unlikely to work, too, if the firmwares aren't updated.
If you find yourself in this situation, there's another solution:
get the firmware files from another computer that's connected to the internet.

Then:

1. On your OpenBSD machine, `fw_update` will determine the firmwares needed which are:
   - `intel-firmware` 
   - `athn-firmware`
   - `inteldrm-firmware`.
1. On the other device (the one connected to the internet), I downloaded the firmwared files from http://firmware.openbsd.org.
However, the USB drive to which I would save these must be **formatted as FAT32**.
(OpenBSD can't natively read ext4 or NTFS partitions.)
    1. There are different ways to format a USB drive to FAT32, depending on the platform you're doing the formatting on. 
        In my Debian-like system, I installed `dosfstools`.
        ```shell
        sudo apt install dosfstools
        ```
    1. I plugged in and located the USB drive by running this in terminal:
        ```shell
        lsblk
        ```
        In my case, it's `/dev/sdc` .
    1. Unmount the USB drive, because it can't be formatted when mounted:
        ```shell
        sudo umount /dev/sdc
        ```
    1. I created a new partition table, which will be `msdos`.
        ```shell
        sudo parted /dev/sdc --script -- mklabel msdos
        ```
    1. I specified that the whole drive must be of FAT32 file system, primary partition type:
        ```shell
        sudo parted /dev/sdb --script -- mkpart primary fat32 1MiB 100%
        ```
    1. Format the drive to FAT32:
        ```shell
        sudo mkfs.fat -F 32 -I /dev/sdc
        ```
    1. (Optional) To check if the device has been partitioned correctly:
        ```shell
        sudo parted /dev/sdc --script print
        ```
1. Insert the USB drive that has now the firmware files to the OpenBSD machine.
As root, enter `diskutil list`.
The USB drive will appear to have several partitions, e.g. sd1c.
1. Create a mount point under /mnt (as root):
   ```shell
   mkdir /mnt/usb
   ```
1. Mount the USB (as root):
   ```shell
   mount /dev/sd1i /mnt/usb
   ```
1. Once mounted, install the firmware manually (as root):
   ```shell
   fw_update -p /mnt/usb
   ```
1. Reboot.

### Optional things

In this laptop, I'm going install several binaries from the ports, namely **git** (version control system), and **neovim** (text editor).
To install in one go, enter as root:
```shell
pkg_add git neovim 
```
## SSH Server and Client

In order for the client to connect to the server, 
a user account must be created on the server.
During OpenBSD install, I had already created a user.

Now, to set up the SSH[^ssh]:

[^ssh]: The SSH (secure shell) protocol uses encryption to secure the connection between a client and a server.
All user authentication, commands, ouput, and file transfers are encrypted to protect against attacks in the network.
For more info: https://www.ssh.com

### Client Side

Before generating, be sure to check first whether there are any existing ones.

Enter `ls -al ~/.ssh` to do that.
Check the listing to see if public SSH key (sometimes referred to as "pubkey") already exists.
Filenames include: 
- `id_rsa.pub`
- `id_ecdsa.pub`
- `id_ed25519.pub`

**To generate a new key**:

1. Enter this in the terminal:
   ```shell
   ssh-keygen -t ed25519 -a 100
   ```
   `-t ed25519` option specifies the type of key;  
   `-a 100`  option specifies the number of key derivation function rounds used.
1. Follow the prompts.
I left the defaults as they are, but feel free to configure for your use case.
1. In order to add key, start the ssh-agent in the background.
   ```shell
   eval "$(ssh-agent -s)"
   ```
1. Add the SSH private key to the ssh-agent.
   ```shell
   ssh-add ~/.ssh/id_ed25519
   ```
1. When going to the remote server using SSH, you'll be prompted for a password everytime.
Instead of that, we can use the SSH key.
Copy that into the remote server:
   ```shell
   ssh-copy-id username@example.com
   ```
   This will prompt you one last time for the password of the server.
   If successful, the server will no longer prompt you for password everytime you SSH into it.

### Server Side (the OpenBSD machine)

A few tweaks are needed to make SSH a pleasant experience.

1. Login---or SSH *into*---the server:
   ```shell
   ssh username@example.com
   ```
1. Edit `/etc/ssh/sshd_config`:
   ```shell
   # find PasswordAuthentication, comment it out, 
   # and turn 'yes' to 'no'
   # so bad actors can't login even if they know the passwd
   PasswordAuthentication no

   # find PermitRootLogin, comment it out, 
   # and turn 'no' to 'yes'
   # so rsync can access the root when syncing files
   PermitRootLogin yes
   ```

## Web Server on OpenBSD

Now we're at the heart of this project:
to make this old laptop a working server for this site.
Let's start by configuring httpd, the native HTTP daemon in the OpenBSD.

### Configure httpd

### Enable HTTPS with acme-client(1) and Let's Encrypt

### Add HTTP security headers with relayd(8)

## Other Noteworthy Inconveniences

In this section, I'll discuss the obstacles that I had to go through.

### LAN Ports problem

At the time of writing, our internet service provider is PLDT Home Fibr.
Subscription comes with an actual telephone and a router.
The router has four LAN ports.

To improve the reach to the second floor of our home,
we connected another router (Xiaomi brand) to LAN port 1.
This second router has been working well since.

By default, LAN ports 2, 3, and 4 are disabled.
I didn't know that.
When first setting up the ethernet connection for the OpenBSD machine,
it wasn't detecting anything.

During troubleshoot, I tried the three remaining ports with different ethernets that were available to me at the time.
None of this approaches worked.

### Takeaway/s

- Always read the official documentations.
In the case of OpenBSD, their man pages are superb, and is available already in the base install.
Be patient to go through them.
- Check with your internet service provider whether some things need to be done first, before setting up a homebrew server. 
