---
title: "Default FOSS apps"
date: 2022-01-16T11:14:38+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "oqo"]
draft: false
---

{{< figure src="/image/neofetch.png" alt="Screenshot of desktop, including Operating System Details" caption="`sway` tiling window manager. Clockwise from top-left: Firefox, `neofetch` in `foot` running `tmux`, `imv` viewing a webcomic from https://webcomicname.com, mpv" >}}

## Default apps

- Operating System: [Alpine Linux v3.22 *stable*](https://alpinelinux.org) (laptop, daily driver); [Debian 12 "*bookworm*"](https://www.debian.org/News/2023/20230610) (host server); Android (smartphone)
- Tiling window manager: [sway](https://swaywm.org/)
- Web Browsers: [Chromium](https://www.chromium.org/chromium-projects/) (laptop), [Mull](https://divestos.org/pages/our_apps#mull) (Android)
    - Browser add-ons: uBlock Origin, Redirector, SponsorBlock, Privacy
      Badger, Wayback Machine
    - Redirector set-up: [JSON file](/Redirector.json) (includes Scribe,
      Rural Dictionary, rimgo, Quetre)
- Search engine: [Searx](https://searx.be/)
- Password manager: [Bitwarden](https://bitwarden.com/)
- Email client: [aerc](https://aerc-mail.org)
- Email providers: [Migadu](https://www.migadu.com/), [Tuta](https://tutanota.com/)
- Torrent client: [Transmission](https://transmissionbt.com/)
- Back-up/File Sync: [Syncthing](https://syncthing.net/)
- Instant messaging: [Signal](https://signal.org/)
- RSS Feed reader: [newsraft](https://codeberg.org/newsraft/newsraft)
- Music player: [Rhythmbox](http://www.rhythmbox.org/) (laptop); [Auxio](https://github.com/OxygenCobalt/Auxio) (Android)
- Internet radio: [Shortwave](https://apps.gnome.org/Shortwave/)
- Video player: [mpv](https://mpv.io)
- Notes: [vimwiki](https://vimwiki.github.io/) plugged into [neovim](https://neovim.io) (also my `$EDITOR` of choice)
- Office suite: [LibreOffice](https://www.libreoffice.org)
- PDF reader: [zathura](https://pwmt.org/projects/zathura/)
- Physical exercise tracker: [FitoTrack](https://codeberg.org/jannis/FitoTrack) (Android)
- YouTube client: [NewPipe](https://newpipe.net/) (Android)
- Authenticator: [Aegis](https://getaegis.app/) (Android)
- Bird listener: [whoBIRD](https://github.com/woheller69/whoBIRD) (Android)

## Special Mentions

- [Fedora Workstation](https://getfedora.org/en/workstation/) -- The
  first Linux distro I used. Also currently using the [Budgie Spin](https://fedoraproject.org/spins/budgie) to run on an old laptop repurposed to be a media center.
- [OpenBSD](https://www.openbsd.org/) -- The one I used in [the Old Computer Challenge](/old-computer)
- [Devuan 5 "Daedalus"](https://www.devuan.org/os/announce/daedalus-release-announce-2023-08-14)
  -- is a Debian-fork OS without systemd that used to be in my main
  computer before distro-hopping[^distro-hopping] to Alpine.
- [LibreWolf](https://librewolf.net) -- For a while, I had used this
  Firefox fork, but it was giving mild inconveniences in my new Alpine
  setup. So, I switched back to Firefox.
- [Tor Browser](https://www.torproject.org) -- For when I need to be
  anonymous on the internet. I don't use this much, but I have it just
  in case.
- [Thunderbird](https://www.thunderbird.net/) - GUI email client I had used
  and is just reliable, though can be bloated at times.

[^distro-hopping]: The act of frequently changing the OS of one's
computer to a different distribution of
[Linux](https://en.wikipedia.org/wiki/Linux), *usually* as a hobby.

## Why?

Is the software you use...:
- backed by venture capital (VC) funding?
- maintained by Big Tech companies?

If so, know that this will pose different problems in the future, if it
hasn't already yet. Companies ultimately are driven by profit incentive,
and at one point, they will want to collect. It can be in the form of
unfair subscription payment models,
[enshittification](https://pluralistic.net/2024/04/24/naming-names/#more-8578)
of their services, privacy-invasive data gathering methods, etc.

As much as possible, I want to use FOSS (i.e., free and open source
software) for all my software needs. I believe FOSS empowers me to
accomplish digital tasks that don't cage me in a paid walled garden
and/or surveil my every move.

{{< figure src="/image/foss-venn.png" alt="Venn Diagram showing the intersection of 3 characteristics of a software: good, fair, legal. All three is what FOSS represents. Good and legal is usually privacy-invasive. Good and fair is piracy. Fair and legal software: 'Why are you using it?'" caption="Venn Diagram generator by classtools.net" >}}

It can be hard, though, especially if Big Tech companies are embedded in
our digital lives now (e.g., at work), whether we like it or not. Take
this personal anecdote as an example: computer "lessons" from my high
school days involved using proprietary software like Microsoft Office
(Word, Excel, and  PowerPoint) and Adobe Photoshop. When these are baked
into the curriculum early on, it won't be easy learning about FOSS alternatives.

I try not to get obsessed, though, on picking the right tools.
There's no perfect tool, and even the great ones will not save you;
how you use them might.
