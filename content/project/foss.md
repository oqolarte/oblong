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

I try not to get obsessed, though, on picking the right tools.
There's no perfect tool, and even the great ones will not save you;
how you use them might.

Listed here are the programs I use on a regular basis
that's not work-related.

{{< toc >}}
## Operating System 

- [Debian 11 "Bullseye"](https://www.debian.org/releases/bullseye/) -- OS in the server that
  hosts this site
- [Devuan 5 "Daedalus"](https://www.devuan.org/os/announce/daedalus-release-announce-2023-08-14) -- is a Debian-fork OS without systemd in my main computer.

{{< figure src="/image/neofetch.png" alt="Operating System Details" caption="My computer's details, brought to you by neofetch" >}}

{{< btt >}}
### Special Mentions
- [Fedora Workstation](https://getfedora.org/en/workstation/) --
The first Linux distro I used.
First time using a GNOME desktop environment which was nice.
It's also here that I first used a tiling window manager, i3.
- [OpenBSD](https://www.openbsd.org/) -- The one I used in [the Old Computer Challenge](/old-computer)
- [Artix Linux](https://artixlinux.org/) -- the first Arch-based Linux
  I used. Stopped because of constant need to update.

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

- [Tor Browser](https://www.torproject.org) -- for when I need to be
  anonymous on the internet.
I don't use this much,
but I have it just in case.

{{< btt >}}
### LibreWolf Add-ons
LibreWolf's defaults are
centered on privacy, security, and user freedom after all.
Still, I have these add-ons, all of which are in [Firefox Add-ons](https://addons.mozilla.org/en-US/firefox/),
to make web surfing more bearable.

uBlock Origin
: is a wide-spectrum blocker
(which includes adblocking)
with CPU and memory efficiency as a primary feature.
Already included in LibreWolf as a default add-on.

Redirector
: automatically redirects content based on user-defined rules.
Currently redirecting Medium sites to [Scribe](https://scribe.rip),
Twitter to a [Nitter](https://nitter.kavin.rocks) instance,
Urban Dictionary to a [Rural
Dictionary](https://codeberg.org/zortazert/rural-dictionary#headline-2)
instance,
Imgur to
[rimgo](https://codeberg.org/video-prize-ranch/rimgo#user-content-instances)
instance,
and Quora to [Quetre](https://github.com/zyachel/quetre#instances).
You can import the [JSON file](/Redirector.json) containing these.

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

- [Thunderbird](https://www.thunderbird.net/) - GUI client that just
  works but can be bloated at times

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

- [Migadu](https://www.migadu.com/) - an affordable paid service.
- [Tutanota](https://tutanota.com/) - freemium service with end-to-end
  encryption as default.

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

- [Signal](https://signal.org/) -- a privacy- and security-oriented
  messaging app.

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
- [NewPipe](https://newpipe.net/) -- For watching on an Android-run smartphone
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) -- Download videos,
and watch it with [mpv](https://mpv.io)
- [PeerTube](https://joinpeertube.org/) -- Not really YouTube per se.
A decentralized alternative to video sharing platforms.

{{< btt >}}

## Research Assistant

- [Zotero](https://zotero.org) is a free, easy-to-use tool to help you collect, organize, annotate, cite, and share research.

{{< btt >}}
