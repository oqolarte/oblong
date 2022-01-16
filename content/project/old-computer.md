---
title: "The Old Computer Challenge"
date: 2021-07-10T13:21:43+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "old computer", "using old computer", "unix", "openbsd on old computer", "openbsd"]
draft: false
---
## Status: Done {.statusDone}

This project is my attempt to "make it work" using old, un-upgraded computer.
Over this period, I'll document the good, the bad, and the ugly.
Below isn't necessarily a tutorial, but personal notes.
Whenever possible, I'll link the things I use to their respective online documentation.

[Solène's prompt was to use old computers for a week](https://dataswamp.org/~solene/2021-07-07-old-computer-challenge.html),
from 10-17 July 2021.
For details, check her post.

I didn't follow all the rules to the letter.
For example, I didn't limit my RAM to 512MB.
Doing so, in my case, would result in a terrible experience.

I'm recommissioning the MSI Wind Netbook for this project,
the same laptop that I originally planned to be my [homebrew server](/server).

{{< btt >}}
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

{{< btt >}}
### Crippled by Microsoft

One of the Challenge's participants, matto, [mentioned](gopher://box.matto.nl/0/one-week-with-freebsd-13-on-an-acer-aspire-one-zg5-part-one.txt) (gopher link[^gopher]):

> Microsoft came up with some crazy requirements for netbooks,
like too low RAM-size ceiling and a not too capable CPU.
OEM manufacturers had to comply,
to be allowed to put a less expensive netbook-version of Windows on it.

I wouldn't be surprised if this were actually the case.
And only a few searches later,
indeed, in mid-2008, Computerworld reported[^ms1] about Microsoft's trojan horse:

> Microsoft plans to offer PC makers steep discounts on Windows XP Home Edition
to encourage them to use that OS instead of Linux on ultra low-cost PCs (ULPCs).
To be eligible, however,
the PC vendors that make ULPCs must limit screen sizes to 10.2 inches
and hard drives to 80G bytes, and they cannot offer touch-screen PCs.
[...] Systems can have no more than [1 Gb RAM] and a single-core processor running at no more than 1Ghz.

The RAM requirement may not have been applied to all netbooks,
as evident by this very one that I used.

Unsurprisingly, more than a year later, Microsoft's then-director of worldwide product marketing,
Don Paterson condescended to consumers for wanting an affordable computer[^ms2] that's preinstalled with an outdated OS. 
This either forced the netbook owners to shell out more money to upgrade to Windows 7,
or keep the Windows XP.
Whatever they choose, they'd be stuck with the same low-end hardware.


[^ms1]: Shah, A. (2008, May 11). *Microsoft to limit capabilities of cheap laptops.* Computerworld. https://www.computerworld.com/article/2786595/microsoft-to-limit-capabilities-of-cheap-laptops.html

[^ms2]: Clarke, G. (2009, November 12). Windows XP on netbooks to lose life support? The Register. https://www.theregister.com/2009/11/12/microsoft_windows_7_netbooks/

[^gopher]: Gopher protocol is an old internet protocol.
Unless you install a specific plugin,
modern web browsers, like Chrome or Firefox,
can't access the contents in gopher.
`w3m` is one of the command-line browsers that are still available today that can access gopher.
This is mentioned later in the article.

{{< btt >}}
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
- Version Control: [git](https://git-scm.com)

[^vi]: `vi` in OpenBSD is actually an implementation of [nvi](https://www.bostic.com/vi/).

{{< figure src="/image/oldpc.png" alt="screenshot of system running tmux with neovim, pfetch, htop" caption="System captured with `scrot`" >}}

Most of them are available in the official ports.
Download them, and some other dependencies, in one go:

```
# pkg_add firefox git gmake go irssi hugo \
newsboat nnn neovim mpv py3-pip \
qutebrowser w3m-*-image webkitgtk4
```
{{< btt >}}
### Dotfiles

Dotfiles are configuration files for various programs,
so named because their names usually begin with a dot,
meaning that they're hidden,
unless specified otherwise.

[`.cwmrc`](/cwmrc)  
[`.exrc`](/exrc)  
[`.vimrc`](/vimrc)  
[`.kshrc`](/kshrc)  
[`.tmux.conf`](/tmux)  
[`.xsession`](/xsession)  

{{< btt >}}
## Window Manager

I initially opted for [dwm](https://dwm.suckless.org),
because that's my favorite.
However, every time I boot into it,
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

I didn't want the console log to open every time I log in,
so I commented it out of the `/etc/X11/Xenodm/Xsetup_0` file.


{{< btt >}}
## Terminal Emulator

I use `st` because it's snappier than `xterm`.
`st` lacks scrollback feature, though, which `tmux` solves fortunately.
I applied no patches for my build.

I use `xterm` only for when using `w3m-img`,
because it properly renders images, unlike `st`.
A dedicated key-binding spawns an `xterm` instance outside of `tmux` just to load `w3m-img`.

{{< btt >}}
## File Manager

I don't often use a file manager,
but I installed `nnn` just in case.

Mostly, I use `mv`, `cp`, `rm`, `cd`, `ls` and other Unix utilities for moving around.
Using them "forces" me to be mindful of the file tree structure of the current working directory.
It also encourages me to immediately clean up files and/or put them where they need to be.
As an effect, my system is clutter-free and simple[^fs].
I believe the cool people call it digital minimalism.

[^fs]: Of course, this is purely a subjective assessment of my system.

{{< btt >}}
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

{{< btt >}}
## Web Browsers

The overrated portals to the internet, and rightly so.
Subject of many online debates.
Good thing that there are some that can still run on limited hardware.

{{< btt >}}
### Text-based
Text-based (or more accurately, command line) browsers are enough to connect me to the internet.
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
Web developers, though, haven't been designing the modern web to be usable with HTML only,
so expect that many sites will break while using text-based browsers.
I wish this weren't the case, but it has come to this...

I use the lightest version of DuckDuckGo (that I know) as my search engine,
`ddg.gg/lite`,
for quick searches.

{{< btt >}}
### GUI

I *could* tolerate the slow loading times of Firefox,
but why would I?
(Hardened) Firefox is only okay to use on computer with 4GB ram or up.

qutebrowser is a more lightweight option, and runs okay.
I prefer using this one over Firefox,
but only do so when `w3m`, for some reason, won't do.

I tried installing [suckless surf](https://surf.suckless.org),
but was only successful when I got `webkitgtk4`.
surf can also be an alternative lightweight GUI browser,
but it needs more patching to be as usable as qutebrowser.

{{< btt >}}
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

{{< btt >}}
## Getting the latest

I use newsboat as my RSS reader.
I reused (copied) the URL list from my main machine to this netbook,
but I trimmed the sites that don't offer the full content in their feed.
This is to keep my reading contained within newsboat,
and to not have to open a browser.

With a bit more effort,
one could even subscribe to social media feeds like YouTube, Twitter, Mastodon, podcasts, and perhaps some more;
but I didn't do it in this machine.

{{< btt >}}
## Blogging

How else can I report to the public about this project if not through this [site](/site)?

I build this site using `hugo`.
Ever since I got into making static websites,
it's all I use.
I `git` my files for version control.

I even blogged daily during the course of this Challenge,
to feel what it's like to compose texts on this electric typewriter.
Here were the logs:
- [Day 1: Signs of Aging](/aging)
- [Day 2: Haircut](/haircut)
- [Day 3: Trese](/trese)
- [Day 4: Life as News](/life-news)
- [Day 5: Is It Flue Season Already?](/flu)
- [Day 6: Uphills](/uphills)
- [Day 7: Walking the Dog](/dogwalk)
- [Day 8: FOLK](/afolk)

{{< btt >}}
### Accesing Github

During the course of this project,
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

{{< btt >}}
## IRC

I've been meaning to get into the internet relay chat, or IRC, for a long time now.
I choose `irssi` as my IRC client.
Currently, I hangout in `irc.libera.chat` as `oqo`.
Got to talk with some of the cool people hanging out on `#old-computer-challenge`

{{< btt >}}
## Smartphone

I still use my four-year old phone during this project,
but mainly for keeping in touch with friends and family.
By today's standards, that too is an old computing device.

So, in line with the project's theme,
below is a short list of my device's noteworthy specs,
followed by some of the tools that I use regularly.

{{< btt >}}
### Hardware
- Phone: Samsung A7 (2017)
- Chipset: Exynos 7880 (14 nm)
- Memory: 32Gb internal storage, 3Gb RAM
- CPU: Octa-core 1.9 GHz Cortex-A53
- Main Camera: 16 MP, f/1.9, 27mm (wide), AF
- Selfie Camera: 16 MP, f/1.9, 26mm (wide), 1/3.06", 1.0µm
- Sound: With 3.5mm jack (!!)

{{< btt >}}
### Software
- Operating System: [Lineage OS 17.1](https://lineageos.org)
- App Store: [F-Droid](https://f-droid.org/) (FOSS) and [Aurora Store](https://f-droid.org/en/packages/com.aurora.store/) (Google Play Store alternative)
- Instant Messenger: [Signal](https://signal.org)
- Launcher: [KISS](https://kisslauncher.com/)
- Maps: [OsmAnd~](https://osmand.net/)

{{< btt >}}
## Thoughts and Opinions

**Specifications unmet**:
As mentioned, I didn't meet the hardware requirements.
I'll be the first to admit that it wouldn't have been enjoyable,
to do what is considered today normal computing tasks on an old computer.
It's called a challenge for a reason after all!
And of course, kudos to the [other participants](https://dataswamp.org/~solene/2021-07-07-old-computer-challenge.html#_Social_medias) who ran in 512MB RAM!

**Realistic use-case?**:
On the software side,
my setup is not for those who are only familiar with GUI.
Only a handful of people would actually want to move their computing to terminal-based applications.
So, we cannot, *shall not*, expect non-tech savvy people to use old
computers, especially when they'd use only GUI,
and the alternative has a steep learning curve.

**No muzak**:
I didn't listen to music, because I don't have any on this computer.
I could stream, but didn't.

**No e-book reading**:
I only read blog posts in the RSS.
I reserved book reading as an offline endeavor.
Good for the eyes.

**Torrenting?**:
I wanted to torrent a relatively huge file,
and see how it would handle that.
Life kept getting in the way, though---which
is good, more time away from computers---that I was unable to do that.

**Looking forward to it**:
I noticed my excitement to record my day on this old computer.
It's like capping the day with a favorite drink.
Blogging on a more-than-ten-year-old machine evokes a kind of nostalgic feeling, I guess.
But it's also more than that:
it's knowing that I, in principle, can do most, if not all,
of my daily tasks in this MSI Wind Netbook,
given enough time and effort.

{{< btt >}}
## Conclusion

This challenge only reinforces my notions about having a simple computer setup.
I realize that while it's not for everyone,
it's doable with the right mindset.

Computers do the boring stuff for us,
so we may accomplish other things.
However, we need to consider that this access to efficiency and precision is a double-edged sword.

The manufacturers, developers, and consumers must be responsible
in keeping away as much e-waste from landfills as possible.

Manufacturers should build computers that will remain operational for at least ten years.
Planned obsolescence harms the people and the environment.

Developers should design their software to work even on old computers.
Before adding a feature,
consider how it would impact modern and decades-old electronics.

Consumers: stop asking, needing, wanting for more.
Why upgrade if the effects are ephemeral?
We need to simplify our workflows.
Only use what is needed, both in hardware and software.

{{< btt >}}
