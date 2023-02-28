---
title: "Moving to FOSS"
date: 2022-01-16T11:14:38+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "oqo"]
draft: false
---
{{< ongoing >}}

Free and Open Source Software (FOSS) aims to improve the quality of our digital lives, whether we know it or not, by maintaining these freedoms (aka Four Essential Freedoms of Free Software):

1. to run the program as you wish, for any purpose;
1. to study how it works, and change it so it does your computing as you wish.
   Access to the source code is a precondition for this;
1. to redistribute copies so you can help your neighbor
1. to distribute copies of your modified versions to others, and in so doing
   allows the community a chance to benefit from your changes. Access to the
   source code is a precondition for this.


{{< figure src="/image/foss-venn.png" alt="Venn Diagram showing the intersection of 3 characteristics of a software: good, fair, legal. All three is what FOSS represents. Good and legal is usually privacy-invasive. Good and fair is piracy. Fair and legal software: 'Why are you using it?'" caption="Venn Diagram generator by classtools.net" >}}

I'm still trying to migrate all of my software needs to FOSS,
but it can be hard, especially if big tech like Google and Microsoft
is deeply embedded in our digital lives now,
whether we like it or not.

I try to be wary, though, of getting obsessed on picking the right tools.
In my opinions, there's no perfect tool, but there just might be a few of them
that can do a specific task decently.
Remember, your tools will not save you;
how you use them might.

Listed here are the programs I use on a regular basis.

{{< toc >}}
## Operating System 

- [Debian 11 "Bullseye"](https://www.debian.org/releases/bullseye/) -- OS in the server that
  hosts this site
- [Devuan 4
  "Chimaera"](https://www.devuan.org/os/announce/chimaera-release-announce-2021-10-14) -- is a Debian-fork OS without systemd in my main computer.

{{< btt >}}
### Special Mentions
- [Fedora Workstation](https://getfedora.org/en/workstation/) --
The first Linux distro I used.
First time using a GNOME desktop environment which was nice.
It's also here that I first used a tiling window manager, i3.
- [OpenBSD](https://www.openbsd.org/) -- The one I used in [the Old Computer Challenge](/old-computer)
- [Artix Linux](https://artixlinux.org/) -- the first Arch-based Linux
  I used. Stopped because of constant need to update.
- [Windows 10](https://www.microsoft.com/en-us/software-download/windows10ISO)
  -- the only non-FOSS in here that I use only for gaming;
  this is more preferred than using [Wine](https://www.winehq.org/) on Linux.
We also have a dedicated PC for this, the one that my sibling decommissioned
because they're upgrading to a new one.

{{< btt >}}
## Web Browser

- [LibreWolf](https://librewolf.net) -- for more intensive web-surfing,
which usually includes video-streaming
and JavaScript-heavy sites like banking.
Firefox was formerly in this spot,
but decided I wanted a simpler life.
- [Suckless Surf](https://surf.suckless.org) -- for lightweight usage,
usually includes researching and reading texts and looking at web images.

### Special Mention

- [Tor Browser](https://www.torproject.org) -- for circumventing not
  surveillance more than censorship.
I don't regularly use this,
but I have this in my computer just in case.

{{< btt >}}
### LibreWolf Add-ons
LibreWolf has nice defaults
that are centered on privacy, security, and user freedom after all.

I have these add-ons, all of which are available in [Firefox Add-ons](https://addons.mozilla.org/en-US/firefox/), to make my web surfing more bearable.

uBlock Origin
: is a wide-spectrum blocker
(which includes adblocking)
with CPU and memory efficiency as a primary feature.
Already included in LibreWolf as a default add-on.

Redirector
: automatically redirects content based on user-defined rules.
Currently redirecting Medium sites to [Scribe](https://scribe.rip),
and Twitter to a [Nitter](https://nitter.kavin.rocks) instance.

SponsorBlock
: is a crowdsourced extension that skips sponsorships, subscription-begging, intros, outros, and
other annoying parts of YouTube Videos.

{{< btt >}}
### Suckless Surf patches
Surf, being a much simpler web browser, requires
[patches](https://surf.suckless.org/patches/).
I use the following to make Surf more pleasant to use.

homepage
: allows you to set a homepage to be loaded when you have not set a
  URI (uniform resource identifier).

clipboard instead of primary
: adds a config option (ClipboardNotPrimary) that allows to use the CLIPBOARD selection.

websearch
: adds a search feature using DuckDuckGo as the search engine,
although this can still be modified.

{{< btt >}}
## Search Engines
- [Searx](https://searx.be/) -- the meta-search engine I use daily.
- [Startpage](https://www.startpage.com/) -- the default search engine I set up
  in my work computer

{{< btt >}}
## Email Client

- [Thunderbird](https://www.thunderbird.net/)

{{< btt >}}
### Set up plaintext in Thunderbird

1. In the accounts tab, right click on your account
1. Select "Settings"
1. Select the "Composition & Addressing" settings
1. Disable "Compose messages in HTML format"
1. Select "Start my reply below the quote"
1. Repeat this for any other email accounts

### TUI Clients

In the future, I plan to move to TUI email clients like
[neomutt](https://neomutt.org) or [aerc](https://aerc-mail.org).

{{< btt >}}
## Email Providers

- [Migadu](https://www.migadu.com/) - paid service with a very affordable price.
- [Tutanota](https://tutanota.com/) - freemium service with end-to-end
  encryption turned on by default.

{{< btt >}}
## Torrent Client

- [Transmission](https://transmissionbt.com/)

{{< btt >}}
## Password Manager

Password managers store all your other passwords, so you won't have to remember
them.
You only need to remember one master password to access the vault (i.e., the
password manager).

- [Bitwarden](https://bitwarden.com/)

{{< btt >}}
## Instant Messaging

- [Signal](https://signal.org/)

The hardest part of Signal is not even in the UI/UX of the app itself;
in fact, dare I say, it's as intuitive as all the other messaging apps out
there.
It's in convincing other people to install another
messaging app for that one person who isn't FB Messenger, Viber, Telegram,
Instagram, WhatsApp,
and Twitter---in this case, that one person is me.

{{< btt >}}
## Productivity
- [Libreoffice](https://www.libreoffice.org/) -- FOSS substitute for MS Office
  Suite. I only have Writer (word
  processor) and Calc (spreadsheet) installed.
- [neovim](https://neovim.io) -- my text editor of choice.

{{< btt >}}
## RSS Feed Readers
- [newsboat](https://newsboat.org/) -- reader for the text console.

{{< btt >}}
## Media Player
- [mpv](https://mpv.io) -- Main media player
- [VLC](https://www.videolan.org/) -- For that rare times when the main one
  doesn't work

{{< btt >}}
## YouTube Alternatives
- [NewPipe](https://newpipe.net/) -- For watching on an Android-run smarphone
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) -- Download videos,
and watch it with [mpv](https://mpv.io)
- [PeerTube](https://joinpeertube.org/) -- Not really YouTube per se.
A decentralized alternative to video sharing platforms.

{{< btt >}}
