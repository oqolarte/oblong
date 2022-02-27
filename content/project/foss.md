---
title: "Moving to FOSS"
date: 2022-01-16T11:14:38+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "oqo"]
draft: false
---
## Status: On-going {.statusOnGoing}

Free and Open Source Software (FOSS) aims to improve the quality of our digital lives, whether we know it or not, by maintaining these freedoms (aka Four Essential Freedoms of Free Software):

1. to run the program as you wish, for any purpose;
1. to study how it works, and change it so it does your computing as you wish.
   Access to the source code is a precondition for this;
1. to redistribute copies so you can help your neighbor
1. to distribute copies of your modified versions to others, and in so doing
   allows the community a chance to benefit from your changes. Access to the
   source code is a precondition for this.

I'm still trying to migrate all of my software needs to FOSS,
but it can be hard, especially if big tech like Google and Microsoft
is deeply embedded in our digital lives now,
whether we like it or not.

Listed here are the programs I use on a regular basis.

{{< btt >}}
## Operating System 

- [Debian 10 "Buster"](https://www.debian.org/releases/buster/) -- OS in the server that
  hosts this site
- [Devuan 4
  "Chimaera"](https://www.devuan.org/os/announce/chimaera-release-announce-2021-10-14) -- is a Debian-fork OS without systemd in my main computer.

{{< btt >}}
### Special Mentions
- [Fedora Workstation](https://getfedora.org/en/workstation/) -- The first Linux
  distro I used.
- [OpenBSD](https://www.openbsd.org/) -- The one I used in [the Old Computer Challenge](/old-computer)
- [Artix Linux](https://artixlinux.org/) -- the first Arch-based Linux
  I used.
- [Windows 10](https://www.microsoft.com/en-us/software-download/windows10ISO)
  -- the only non-FOSS in here that I use only for gaming;
  this is more preferred than using [Wine](https://www.winehq.org/) on Linux.
We also have a dedicated PC for this, the one that my sibling decommissioned
because they're upgrading to a new one.

{{< btt >}}
## Web Browser

- [Firefox](https://www.mozilla.org/firefox/) -- for more intensive web-surfing,
  which usually includes video-streaming and JavaScript-heavy sites like banking
- [Suckless Surf](https://surf.suckless.org) -- for lightweight usage, usually
  includes researching and reading texts and looking at web images.

{{< btt >}}
### Firefox Add-ons
Firefox, out of the box, doesn't exactly provide a great UX.
I have these add-ons, all of which are available in [Firefox Add-ons](https://addons.mozilla.org/en-US/firefox/), to make my web surfing more bearable.

HTTPS everywhere
: encrypts browser communications with websites

uBlock Origin
: is a wide-spectrum blocker (which includes adblocking) with CPU and memory efficiency as a primary feature.

CanvasBlocker
: alters some JavaScript APIs to prevent fingerprinting

ClearURLs
: remomve tracking elements from URLs

Cookie AutoDelete
: automatically removes unwanted cookies from closed tabs
while keeping the ones you want

LocalCDN
: emulates Contend Delivery Networks to intercept traffic, find
supported resources locally, and inject them into the environment.

NoScript
: allows active content only for trusted domains to prevent exploitation

Redirector
: automatically redirects content based on user-defined rules.

Smart Referer
: automatically hides HTTP referer and JavaScript
document.referrer for cross-domain requests.

SponsorBlock
: is a crowdsourced extension that skips sponsorships, subscription-begging, intros, outros, and
other annoying parts of YouTube Videos.

{{< btt >}}
### Suckless Surf patches
Surf, being a much simpler web browser, requires
[patches](https://surf.suckless.org/patches/).
I use the following to make using Surf more pleasant to use.

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
- [DuckDuckGo](https://duckduckgo.com/) -- my default search engine in my main
  computer
- [Startpage](https://www.startpage.com/) -- the default search engine I set up
  in my work computer
- [Searx](https://searx.space/) -- the meta-search engine I use for looking up
  on more obscure topics

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

{{< btt >}}
## Email Providers

- [Migadu](https://www.migadu.com/)
- [Tutanota](https://tutanota.com/)

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
- [Libreoffice](https://www.libreoffice.org/) -- I only have Writer (word
  processor) and Calc (spreadsheet) installed.

{{< btt >}}
## RSS Feed Readers
- [newsboat](https://newsboat.org/)

{{< btt >}}
## YouTube Alternatives
- [NewPipe](https://newpipe.net/)
- [PeerTube](https://joinpeertube.org/)


{{< btt >}}
