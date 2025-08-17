---
title: "Refurbishing Laptops"
date: 2025-08-13T15:41:42+08:00
keywords: ["ohio olarte", "oqolarte", "oqo"]
draft: false
math: false
---

{{< ongoing >}}

Ever since I got into using Linux full-time, I dreamed about saving old
laptops[^refurbish] by refurbishing them and donating them to those who
need it.

[^refurbish]: The laptop I'm currently using and writing this on is a
[refurbished Thinkpad X220](/64)

Thanks to a friend, this ball is now rolling.

Below are some of my notes for each attempt at refurbishing a laptop.
It's not necessarily a tutorial, but I will try to make it as helpful as
possible, like writing down what worked and didn't work, and putting
links to where needed.

I am codenaming each laptop for easier reference using a random word
generator.

{{< toc >}}

## "Earful": MacBook Air, mid-2013

Initial info about Earful:
- Model: A1466
- Turns on and boots into a login screen.
- Keyboard seems working
- Has an account of previous owner.
    - For privacy and security purposes, I will *NOT* be asking for their
      like password, not that my friend would even consider it. Just for
      fun, I tried `123456` for password, and luckily it did not work.
    - The options, then, for getting into a userspace either we do a
      fresh install of latest compatible macOS or liveboot (for the
      meantime) into a Linux distro

### Fiddling with Earful via macOS

Earful's current macOS version is not immediately apparent on first
boot.

I decided [to reinstall macOS from Recovery](https://support.apple.com/en-us/102655).
Pressing and holding
Command (⌘) and R keys didn't yield any result, i.e., it was just
booting into the normal log-in screen as if it didn't detected my key
presses. When I plugged an external keyboard and tried again, it booted
into Recovery mode. It was also here that I found out that only 1 out of 2
USB ports is reliably functional, the one on the left hand side.

In Recovery mode, I was able to successfully reinstall the version that
was in it, which I found out to be **Mojave**.

After reboot, I found out that I *still* need to login to the account of
Previous Owner. **Important lesson learned**: Reinstalling macOS from
Recovery does *NOT* wipe and replace it with a fresh one.

### Fiddling with Earful via Linux

I've read only good things about Linux Mint as a great place for both
Windows and macOS users to hop onto, so this is the distro that I've
chosen with which to replace the Mojave in Earful.

I went ahead and **downloaded [Linux Mint 22.1 'Xia'](https://linuxmint.com/download.php), Cinnamon edition.**
[Linux Mint Installation Guide](https://linuxmint-installation-guide.readthedocs.io/en/latest/)
is great resource for going through the necessary steps in accomplishing
this, regardless of the scenario (e.g. creating bootable media in Linux
to be installed in MacBook, etc).

However, there are hardware issues:
- Like I said earlier, only one USB port of Earful is reliably working.
  I would need ideally two ports, one for the bootable media and one for
  the external keyboard.
- The most of Earful's keyboard, including the trackpad, somehow stops
  working whenever an external keyboard is plugged in. I think only the
  Power Button is the only left working.

Good thing I have a 4-port USB dongle from our Pile of Stuff that's
still miraculously working after years of unuse.

I plugged the dongle in Earful's working port; plugged the bootable
media, external keyboard, and even a mouse for good measure in the
dongle; and began my work.

To **boot into the bootable media**:
1. From powered off state, press the power button, and *immediately*
  press and hold `Alt/Option` (it's in one key).
2. Choose the bootable drive.
3. Choose "Start Linux Mint Cinnamon 22.1" (first choice)

**Installation** of Linux Mint is as simple as double-clicking the
"Install Linux Mint" on the Desktop and going
through the installation process.

On next reboot (after the successful install, I was prompted to reboot),
a Welcome pop-up window prompted me to go through
the **First Steps**, including:
- Updating desktop colors;
- Setting automatic backups (system snapshots);
- Checking additional drivers (**This is important** as it will deal
  with the proprietary drivers, like WiFi);
- Checking multimedia codecs for ample support for different media
  formats;
- Updating packages and programs;
- Configuring the operating system;
- Installing new software in case it's not included in the base;
- And even setting up network firewall.

After all that, Earful is mostly functional---even the headphone jack is
working. But I needed to address the hardware issues listed above.


{{< figure src="/image/earful-mac.jpg" alt="Image of a MacBook Air 2013 screen with its system details listed out on a terminal emulator" caption="Earful running on Linux Mint 22.1" >}}

### Fiddling with Trackpad and keyboard issue

Looking into it, one possible cause is related to the Trackpad cable.

To get to it, I followed this iFixit guide up to **Step 6**: [MacBook Air 13" Mid 2013 Trackpad Replacement](https://www.ifixit.com/Guide/MacBook+Air+13-Inch+Mid+2013+Trackpad+Replacement/15235)
Supposedly, the easiest possible fix to try is to disconnect the cable
and clean the ZIF sockets on both ends with [isopropyl alcohol](/alcohol). I tried that, reconnected everything, and rebooted---but to no avail, i.e., keyboard and trackpad is still not working.

And this is the point in which my friend and I decided it would be more
productive to have it professionally diagnosed and repaired.

TODO  
I will update this post once Earful has been professionally diagnosed
and repaired.
