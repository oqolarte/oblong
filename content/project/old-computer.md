---
title: "The Old Computer Challenge"
date: 2021-07-10T13:21:43+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte"]
draft: false
---
## Status: On-going {.statusOnGoing}

This project is my attempt to "make it work" using old, un-upgraded computer.
Over this period, I will document the good, the bad, and the ugly.
Below isn't necessarily a tutorial, but personal notes.
Whenever possible, I link the things I use to their respective online documentation.

[Solene's prompt was to use old computers for a week](https://dataswamp.org/~solene/2021-07-07-old-computer-challenge.html),
from 10-17 July 2021.
That's the gist.
For details, check Solene's post.

I don't think I followed all the rules to the letter.
For example, I didn't limit my RAM to 512MB.
Doing so, in my case, would terribly limit my hardware.

For this, I'm recommissioning the MSI Wind Netbook for this project,
the same laptop that I originally planned to be my [homebrew server](/server.md).

For context, here are the following specs that I'm dealing with:

## Hardware

The [MSI Wind Netbook](https://www.laptopmag.com/reviews/laptops/msi-wind-u123) makes another comeback for this week,
whose physical parts comprise:

- CPU: 1.66-GHZ Intel Atom N280
- Display size: 10.2"
- Graphics card: Intel GMA 950
- Hard drive size: 80Gb
- Hard drive speed: 5,400rpm
- Hard drive type: SATA hard drive
- Native resolution: 1024x600
- Ports (excluding USB): VGA, Microphone, Headphone, Ethernet
- RAM: 2Gb
- Wifi: 802.11b/g

Moreover, the physical condition is not even good to begin with:
- no battery, always plugged in;
- some keys don't work properly;
- speakers can only go up to a certain volume, barely audible
(this is a non-issue, though; I can just use earphones as the jacks are working fine).


In real life, some people may just be lucky enough to have a working computer (maybe as a donation),
but not so much to afford to upgrade its parts.
Think far-flung rural areas.

## Software

I need software that requires minimal resources but still empowers the user to "do things."
To me, this means that I have to use the terminal whenever possible.

- Operating System: [OpenBSD 6.9](https://openbsd.org)
- Window Manager: cwm
- Terminal Emulator: [st](https://st.suckless.org) mostly, xterm for using w3m (more info below)
- Terminal Multiplexer: tmux
- Text Editor: [neovim](https://neovim.io) or vi[^vi] depending on the mood
- Web Browser: [qutebrowser](https://qutebrowser.org) (GUI) or w3m (TUI) 
- Shell: ksh
- RSS reader: [newsboat](https://newsboat.org)
- Media player: [mpv](https://mpv.io)
- Static site generator: [hugo](https://gohugo.io)
- File manager: sometimes [nnn](https://github.com/jarun/nnn); mostly just Unix utilities
- IRC client: [irssi](https://irssi.org)
- Version Conrol: [git](https://git-scm.com)

[^vi]: vi in OpenBSD is actually [nvi](https://www.bostic.com/vi/).
vi works well (quickly) for editing config files.

{{< figure src="/image/oldpc.png" alt="screenshot of system running tmux with neovim, pfetch, htop" caption="System captured with `scrot`" >}}

For anyone who cares, here's [dmesg](/dmesg.txt) for more details about my system.

## Window Manager
For the window manager,
I initially opted for [dwm](https://dwm.suckless.org),
because that's my favorite.
However, everytime I boot into it,
the X System seems to hang...?
At this point, it will only respond when I switch to tty (`ctrl + alt + F1`).
Since I couldn't---*don't* have the patience---to figure it out,
I decided to settle with what's on the base install.

I tried [fvwm](https://fvwm.org).
Everything in the base install seems to work fine.
But I don't get the layout.
And the aesthetic is too... archaic for me.
Lastly, it seems to rely heavily on the mouse?
There's probably a way to configure it be keyboard-centric.

Then, I switched to cwm,
or calm window manager,
which is also present in the base install.
After fumbling with this,
I find cwm more pleasant to use than fvwm.

I didn't want the console log to open everytime I log in,
so I commented it out of the `/etc/X11/Xenodm/Xsetup_0` file.

## Terminal Emulator

I use st because it's snappier than xterm. 
st lacks scrollback feature, though, which tmux solves fortunately.
I applied no patches for my build.

I use xterm only for when using w3m-img,
because it properly renders images, unlike st.
A dedicated key-binding spawns an xterm instance outside of tmux just to load w3m-img.

## File Manager
I'd like to say that I won't use a file manager,
but I installed nnn just in case.

```
# pkg_add nnn
```

However, mostly I use `mv`, `cp`, `rm`, `cd`, `ls` and other Unix utilities for moving around.
Using them "forces" me to be mindful of the current file tree structure in home directory.
It also encourages me to immediately clean up files and/or put them where they need to be.

As an effect, my system is clutter-free and simple[^fs].
I believe the cool people call it digital minimalism.

[^fs]: Of course, this is purely a subjective assessment of my system.

### Status bar
I have no separate program for status bar like [polybar](https://polybar.github.io) and the like.
The status bar of tmux works fine displaying the date and time. 

If I suspect that the internet is down,
I can just use `ping`.
Luckily, I can rely on my ISP uptime *most of the time*.

Since I use the headphone jack,
I don't need a visual representation of the volume;
the actual sound coming out of the earphones that I use should be enough an indicator.

## Web Browsers

### Text-based
Text-based browsers can connect me to the internet even on limited hardware.
They are less resource intensive, unlike the GUI ones, and that's expected.

However, it's only natural for my human eyes to want to look at pictures from time to time,
especially if it's relevant to the content.

The w3m in base install had to be replaced with another w3m version that supports image[^w3m].
Such version is available in the official packages.

```
# pkg_add w3m-*-image
```

Like I said, using w3m-img on xterm works as expected.
Now, I won't miss out on photos on blogs!

[^w3m]: According to `pkg_add`, w3m-img is in direct conflict with w3m (in base install).
I installed the former after removing the latter.

I use the lightest version of DuckDuckGo (that I know) as my search engine:
`ddg.gg/lite`

### GUI

I can tolerate the slow loading times of Firefox,
but often, it's just too heavy on the resources.

qutebrowser is a more lightweight option, and runs okay.
I prefer using this one over Firefox.

## Watching Videos

To watch videos from the channels that I subscribe to on YouTube,
I use mpv, youtube-dl, and [ytfzf](https://github.com/pystardust/ytfzf).

Download mpv, a lightweight yet extensible media player:
```
# pkg_add mpv
```

There's a youtube-dl ported to OpenBSD's official packages,
but it's outdated.
It returns an error when I try downloading a video with it.
I got the latest version from pip3 instead.

Download pip3:
```
# pkg_add py3-pip
```

Then download youtube-dl using pip3:
```
# pip3.8 install youtube-dl
```

Download ytfzf, 
```
$ git clone https://github.com/pystardust/ytfzf && cd ytfzf
# make install
```

ytfzf, youtube-dl, mpv works in this setup so far.
Now, I can look up YT videos from terminal, and open them in mpv, browser-less!

## Getting the latest

I use newsboat as my RSS reader.

Get it from the official packages:
```
# pkg_add newsboat
```

I reused (copied) the URL list from my main machine to this netbook,
but I trimmed the sites that don't offer the full content in their feed.
This is to keep my reading contained within newsboat,
and to not have to open a browser.

## Blogging

How else can I report to the public about this project if not through this [site](/site)?

I build this site using hugo.
It's officially ported to OpenBSD, so getting it is as easy as:
```
# pkg_add hugo
```

### Accesing Github

At the time of writing,
this site and its source code is hosted on Github.
I wanted to access Github[^gh] through their [gh-cli](cli.github.com),
because it's quicker than opening a GUI browser.

The only option for me is to build it from source.

First, I need golang and gmake,
the latter for compiling,
because `make == clang` in base install,
and `clang` doesn't work (I've tried).
Might as well add, you know, git, into the mix.
```
# pkg_add go gmake git
```

Then follow the [instructions when installing from source](https://github.com/cli/cli/blob/trunk/docs/source.md),
except do use `gmake` when building and installing, like so:
```
# gmake install
```

{{< figure src="/image/gh-cli.png" alt="screenshot of tmux running gmake, htop, and scrot" caption="Compiling time compelled me to make lunch." >}}

Lastly, I followed the prompts after typing:
```
$ gh auth login
```

[^gh]: I also use Github for other non-blogging projects, so doing this is vital.

## IRC

I've been meaning to get into the internet relay chat, or IRC, for a long time now.

I choose irssi as my IRC client.
```
# pkg_add irssi
```

Currently, I hangout in `irc.libera.chat` as `oqo`.

## Smartphone

I contact my friends and family through [Signal Messenger](https://signal.org),
so that means I must keep on using my smartphone.
