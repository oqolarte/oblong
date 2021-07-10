---
title: "Old Computer"
date: 2021-07-10T13:21:43+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte"]
draft: false
---
## Status: On-going {.statusOnGoing}

[Solene's prompt was to use old computers for a week](https://dataswamp.org/~solene/2021-07-07-old-computer-challenge.html),
from 10-17 July 2021.
That's the gist of the whole challenge.
For details, check Solene's post about it.

I don't think I followed all the rules to the letter.
For example, I didn't limit my RAM to 512MB.
Doing so, in my case, would terribly limit my only poor hardware.

For this, I'm recommissioning the MSI Wind Netbook for this project,
the same laptop that I originally planned to be my [homebrew server](/server.md).

For context, here are the following specs that I'm dealing with:

## Hardware

The [MSI Wind Netbook](https://www.laptopmag.com/reviews/laptops/msi-wind-u123) makes another comeback for this week,
whose physical parts comprise:

- Bluetooth 2.0
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

This project is me attempting to "make it work" in old, un-upgraded computer.
In real life, some people may just be lucky enough to have a working computer (maybe as a donation),
but not so much to afford to upgrade its parts.
Think far-flung rural areas.

## Software
- Operating System: [OpenBSD 6.9](https://openbsd.org)
- Window Manager: cwm
- Terminal: [st](https://st.suckless.org)
- Terminal Multiplexer: tmux
- Text Editor: [neovim](https://neovim.io) or vi[^vi] depending on the mood
- Web Browser: qutebrowser (GUI) or w3m (TUI) 
- Shell: ksh

[^vi]: vi in OpenBSD is actually nvi,
an improved version of vi,
in my opinion.

## Window Manager
For the window manager,
I initially opted for [dwm](https://dwm.suckless.org),
because that's my favorite.
However, everytime I boot into it,
the X System seems to hang...?
At this point, it will only respond when I switch to tty (`ctrl + alt + F1`).
Since I couldn't---*don't* have the patience---to figure it out,
I decided to settle with what's on the base install.

I tried fvwm.
Everything in the base install seems to work fine.
But I don't get the layout.
And the aesthetic is too... archaic for me.
Lastly, it seems to rely heavily on the mouse?
Not sure about that last line, though.
Maybe there's a way to configure it to be keyboard-centric.

Then, I switched to cwm, also present in the base install.
After fumbling with this,
I find cwm more pleasant to use than fvwm.

I didn't want the console log to open everytime I log in,
so I commented it out of the `/etc/X11/Xenodm/Xsetup_0` file.

## Watching Videos

I wanted to still watch some videos from the channels that I subscribe to on YouTube.
For this endeavor,
I'll use mpv, youtube-dl, and [ytfzf](https://github.com/pystardust/ytfzf).

There's a youtube-dl ported to OpenBSD's official packages,
but that one seems outdated.
It wouldn't download a video, and returns an error.
I thought of getting the latest one from pip3 instead.

Download pip3:
```shell
# pkg_add py3-pip
```

Then download youtube-dl using pip3:
```shell
# pip3.8 install youtube-dl
```

Download ytfzf, to look up videos from terminal, and open them in mpv, without the need to open a browser:
```shell
$ git clone https://github.com/pystardust/ytfzf && cd ytfzf
# make install
```

ytfzf, youtube-dl, mpv works in this setup so far.

## Getting updates

I use newsboat as my RSS reader.
Good thing it's ported to OpenBSD officially.

## Blogging

How else can I report to the public about this project if not through this site?

[Hugo](https://gohugo.io) is still my go-to static site generator.
It's officially ported to OpenBSD, so getting it is as easy as:
```shell
# pkg_add hugo
```

### Accesing Github

At the time of writing,
this site and its source code is hosted on Github.
I wanted to access Github[^gh] through their [gh-cli](cli.github.com),
because I believe it's less resource intensive than opening a browser every time.

The only option is to build it from source.

First, I need golang and gmake,
the latter for compiling,
because `make == clang` in base install,
and `clang` doesn't work (I've tried).
```shell
# pkg_add go gmake
```

Then follow the [instructions when installing from source](https://github.com/cli/cli/blob/trunk/docs/source.md),
except do use `gmake` when building and installing, like so:
```shell
# gmake install
```

Lastly, I followed the prompts after typing:
```shell
$ gh auth login
```

[^gh]: I also use Github for other non-blogging projects, so doing this is vital.
