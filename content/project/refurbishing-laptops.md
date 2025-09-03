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

{{< figure src="/image/earful-mac.jpg" alt="Image of a MacBook Air 2013 screen with its system details listed out on a terminal emulator" caption="Earful running on Linux Mint 22.1" >}}

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

However, **Left control** key may not be working as intended. Here is a
satisfactory solution (based from [this discussion](https://unix.stackexchange.com/questions/557775/how-can-i-change-cmd-to-ctrl-in-linux-mint-only-in-terminal)):

1. Go to `Keyboard` > `Layouts` > `Options...`
2. Under **Ctrl position**, make sure the following boxes are checked:
    - Swap Left Alt with Left Ctrl
    - Swap Left Win with Left Ctrl
    - Swap Right Win with Right Ctrl

{{< figure src="/image/left-ctrl-macbook.png" alt="Image of a MacBook Air 2013 screen with its system details listed out on a terminal emulator" caption="Earful running on Linux Mint 22.1" >}}

After all that, Earful is mostly functional---even the headphone jack is
working. But I needed to address the hardware issues listed above.

### Fiddling with Trackpad and keyboard issue

Looking into it, one possible cause is related to the Trackpad cable.

To get to it, I followed this iFixit guide up to **Step 6**: [MacBook Air 13" Mid 2013 Trackpad Replacement](https://www.ifixit.com/Guide/MacBook+Air+13-Inch+Mid+2013+Trackpad+Replacement/15235)
Supposedly, the easiest possible fix to try is to disconnect the cable
and clean the ZIF sockets on both ends with [isopropyl alcohol](/alcohol). I tried that, reconnected everything, and rebooted---but to no avail, i.e., keyboard and trackpad is still not working.

And this is the point in which my friend and I decided it would be more
productive to have it professionally diagnosed and repaired.

When a technician had finally checked it, he found that **the issue was
the actual trackpad**, and not the connecting cable. He had the trackpad
replaced with new one, and everything now works. This repair costed PHP
3,500 (or around USD 61.29 at the time of writing).

### Donated!

As of 23 AUG 2025, Earful now belongs to a deserving donee who is currently
rebuilding his life after he was wrongfully accused and jailed for
crimes he did not commit.

## "Proofing": MacBook Air, mid-2013

Initial info about Proofing:
- Model: A1466
- Does not turn on even when charger is plugged in.
- Indicator light of magsafe charge is not lighting on when plugged in.

### Professional repair

The power issue is beyond my capabilities, so I dropped it at the
trusted repair shop for diagnosis.

They found out that:
- Parts of motherboard have corrosion, likely from a liquid spill.
- System Management Controller (SMC) chip is fried, likely because of
  said spill, thus preventing laptop from charging.

The cost for cleaning off the corrosion and replacing the SMC chip
amounted to PHP 4,500 (USD 79.68).

### Replacing macOS with Linux Mint

This step is the same as the [section above in fiddling with Linux](/refurbishing-laptops/#fiddling-with-earful-via-linux).

### Next step/s

- Proofing came in without its own charger. I'm looking for a secondhand
  one.
- Donate.

## "Sullen": MacBook Air, mid-2015

Initial info about Sullen:
- Model: A1465
- Came in without a charger
- Needs to be plugged in to boot up. It does not turn on when unplugged;
  or it immediately powers off when the magsafe charger is yanked away
  when plugged.
- Significant number of keys are not working, but at least the trackpad
  is working.
- Has an account of previous owner, but is somehow set up to let in a
  "Guest User"
    - Guest User is sandboxed only to Safari (Apple's native web
      browser). Logging to this Guest User was how I found out that some
      keys were not working.
    - In this session, I was able to connect to our wifi.
    - It might be running an outdated Safari because most of the sites I
      visited has an "invalid certificate." From what I can tell, its
      Safari can only make HTTP connections, not HTTP*S* ones.
- Booting up takes a little longer than expected.

### Fiddling with Sullen via Linux, and fixing wifi issue

This step, which is replacing macOS with Linux Mint, is the same as the [section above in fiddling with Linux](/refurbishing-laptops/#fiddling-with-earful-via-linux).

*However*, after the fresh install, it had an odd issue of locating the
wifi drivers, something I did not experience in the first two Macbooks
above. Driver Manager had been throwing errors because it "[c]annot
download packages whilst offline." *Duh.*

It would not be much of an issue if Sullen (and other Macbooks) had an
ethernet port. But Apple's engineers and designers do not see ports, and
functionality in general, as *aesthetically pleasing.*

We would have to [**create a temporary internet connection with a smartphone**](https://web.archive.org/web/20250831141427/https://easylinuxtipsproject.blogspot.com/p/temporary-internet.html?m=1) that is able to connect to internet. That link contains a walkthrough on how to do it on both Android and iOS.

Then, proceed with installing the needed wifi driver/s via Driver
Manager. After this, connect to wifi as normal.

### Professinal repair

I delegated the power and keyboard issues to our trusted repair shop.
They charged a total of PHP 8,400 (~ USD 146.55) for these jobs.

### Next step/s

- Ready for donation.
