---
title: "The Old Computer Challenge"
date: 2021-07-10T13:21:43+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte"]
draft: false
---
## Status: On-going {.statusOnGoing}

This project is my attempt to "make it work" using old, un-upgraded computer.
Over this period, I'll document the good, the bad, and the ugly.
Below isn't necessarily a tutorial, but personal notes.
Whenever possible, I'll link the things I use to their respective online documentation.

[Solene's prompt was to use old computers for a week](https://dataswamp.org/~solene/2021-07-07-old-computer-challenge.html),
from 10-17 July 2021.
For details, check Solene's post.

I didn't follow all the rules to the letter.
For example, I didn't limit my RAM to 512MB.
Doing so, in my case, would result in a terrible experience.

I'm recommissioning the MSI Wind Netbook for this project,
the same laptop that I originally planned to be my [homebrew server](/server.md).

Here are the specs of what I'm dealing with:

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

Note also that the physical condition is not even good to begin with:
- no battery, always plugged in;
- some keys don't work properly;
- speakers can only go up to a certain volume, barely audible
(this is a non-issue, though; I can just use earphones as the jacks are working fine);
- fan hums weirdly, like choking on static.

In real life, some people may just be lucky enough to have a working computer (maybe as a donation),
but not so much to afford to upgrade its parts.
Think far-flung rural areas.

For anyone who cares, here's [dmesg](/dmesg.txt) for more details about my system.

## Software

I need software that requires minimal resources but still empowers the user to "do things."
To me, this means that I have to use the terminal whenever possible.
The following are what I have in my netbook:

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

Most of them are available in the official ports.
Download them, and some other dependencies, in one go:

```
# pkg_add firefox git gmake go irssi hugo \
newsboat nnn nvim mpv py3-pip \
qutebrowser w3m-*-image webkitgtk4
```

## Window Manager

I initially opted for [dwm](https://dwm.suckless.org),
because that's my favorite.
However, everytime I boot into it,
the X Server seems to hang...?
At this point, it would only respond when I switch to tty (`ctrl + alt + F1`).
Since I couldn't---*don't* have the patience---to figure it out,
I decided to settle with what's on the base install.

I tried [fvwm](https://fvwm.org).
All existing systems were good.
But I don't get the layout.
And the aesthetic is too... archaic for me.
Lastly, default config seems to rely heavily on mouse?
There's probably a way to configure it to be keyboard-centric.

Finally, I switched to [cwm](https://man.openbsd.org/cwm.1),
which is also present in the base install.
I find cwm more pleasant to use than fvwm.

I didn't want the console log to open everytime I log in,
so I commented it out of the `/etc/X11/Xenodm/Xsetup_0` file.

## Terminal Emulator

I use `st` because it's snappier than `xterm`.
`st` lacks scrollback feature, though, which `tmux` solves fortunately.
I applied no patches for my build.

I use `xterm` only for when using `w3m-img`,
because it properly renders images, unlike `st`.
A dedicated key-binding spawns an `xterm` instance outside of `tmux` just to load `w3m-img`.

## File Manager

I don't often use a file manager,
but I installed `nnn` just in case.

Mostly, I use `mv`, `cp`, `rm`, `cd`, `ls` and other Unix utilities for moving around.
Using them "forces" me to be mindful of the current file tree structure in (and out) of home directory.
It also encourages me to immediately clean up files and/or put them where they need to be.
As an effect, my system is clutter-free and simple[^fs].
I believe the cool people call it digital minimalism.

[^fs]: Of course, this is purely a subjective assessment of my system.

### Status bar

I have no separate program for status bar like [polybar](https://polybar.github.io) and the like.
I refer to tmux's status bar for date and time.

If I suspect that the internet is down,
I can just use `ping`.
Luckily, I can rely on my ISP uptime *most of the time*.
No need for a visual cue for that.

Since I use the headphone jack,
I don't need a visual representation of the volume;
the actual sound coming out of the earphones that I use should be enough an indicator.

## Web Browsers

### Text-based
Text-based browsers can connect me to the internet even on limited hardware.
They are less resource intensive, unlike the GUI ones, and that's expected.

However, it's only natural for my human eyes to want to look at pictures from time to time,
especially if it's relevant to the content.

The `w3m` in base install had to be replaced with another `w3m` version that supports image[^w3m].

Like I said, using w3m-img on xterm works as expected.
Now, I won't miss out on photos on blogs!

[^w3m]: According to `pkg_add`, `w3m-img` is in direct conflict with `w3m` (in base install).
I installed the former after removing the latter.

`w3m` doesn't support CSS and JavaScript,
and that's good!
Web developers, though, haven't been designing the modern web to beusable with HTML only,
so expect that many sites will break while using text-based browsers.
I wish this weren't the case, but it has come to this...

I use the lightest version of DuckDuckGo (that I know) as my search engine:
`ddg.gg/lite`

### GUI

I *could* tolerate the slow loading times of Firefox,
but why would I?
(Hardened) Firefox is only okay to use on computer with 4GB ram or up.

qutebrowser is a more lightweight option, and runs okay.
I prefer using this one over Firefox,
but only do so when `w3m` won't do.

I tried installing [suckless surf](https://surf.suckless.org),
but was only successful when I got webkitgtk4.
surf can also be an alternative lightweight GUI browser,
but it needs more patching to be as usable as qutebrowser.

## Watching Videos

To watch videos from the channels that I subscribe to on YouTube,
I use `mpv`, `youtube-dl`, and [`ytfzf`](https://github.com/pystardust/ytfzf).

There's a `youtube-dl` ported to OpenBSD's official packages,
but it's outdated.
It returns an error when I try downloading a video with it.
I got the latest version from pip3 instead.

```
# pip3.8 install youtube-dl
```

Download `ytfzf`, a "POSIX script to find and watch YT videos from the terminal."

```
$ git clone https://github.com/pystardust/ytfzf
$ cd ytfzf
# make install
```

## Getting the latest

I use newsboat as my RSS reader.
I reused (copied) the URL list from my main machine to this netbook,
but I trimmed the sites that don't offer the full content in their feed.
This is to keep my reading contained within newsboat,
and to not have to open a browser.

## Blogging

How else can I report to the public about this project if not through this [site](/site)?

I build this site using `hugo`.
Ever since I got into making static websites,
it's all I use.
I `git` my files for version control.

### Accesing Github

At the time of writing,
this site and its source code is hosted on Github.
I wanted to access Github[^gh] through their [`gh-cli`](https://cli.github.com),
because it's quicker than opening a GUI browser.

The only option for me is to build it from source.

I need `go` and `gmake`,
the latter for compiling,
because `make` is really `clang` in base install,
and `clang` doesn't compile `gh-cli` (I've tried).

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
I choose `irssi` as my IRC client.
Currently, I hangout in `irc.libera.chat` as `oqo`.
Got to talk with some of the cool people hanging out on `#old-computer-challenge`

## Smartphone

I contact my friends and family through [Signal Messenger](https://signal.org) on my four-year old phone.
By today's standards, that too is an old computer.
Talk about staying consistent with the project's theme!
