---
title: "iPod Classic with Alpine Linux"
date: 2024-10-03T03:00:04+08:00
keywords: ["ohio olarte", "oqolarte", "oqo"]
draft: false
math: false
---

{{< ongoing >}}

As of writing, [I am using Alpine Linux Stable](/foss) as my main daily driver.
So far, it's been great.

We have an old [iPod Classic from a previous project](https://seekers.araw.xyz/repair-ipod/) that is just sitting unused.

This project notes down the steps I have taken so far **to get the music
library from my Alpine Linux machine into the iPod**, if at all possible.

{{< toc >}}

## Install Rhythmbox for GUI needs

```
# apk add rhythmbox
```

Where `#` signifies that the command be run as root, i.e., with `doas`

[Rhythmbox](http://www.rhythmbox.org/) is a FOSS-copy of iTunes. It
helps that it also supports iPod, that is, if the machine can detect the
device, which will soon get into.

## Install plugins

```
# apk add gstreamer gst-plugins-good
```

These installs plugins that would actually allow Rhythmbox to scan your
library and import music from it.

## Adjust Preferences in Rhythmbox

Be sure to adjust `Preferences`, like:

- Pointing to your music library and other audio files, including
  downloaded podcast episodes.
- Under `Plugins`, make sure that the "Portable Players -- iPod" box is
  checked. By default, it is checked.

## TODO

- [ ] Detect iPod
- [ ] Check: https://superuser.com/questions/84446/how-to-mount-a-hfs-partition-in-ubuntu-as-read-write
