---
title: "Sync muzak in Alpine Linux with iPod Classic"
date: 2024-10-03T03:00:04+08:00
keywords: ["ohio olarte", "oqolarte", "oqo"]
draft: false
math: false
---

{{< done >}}

As of writing, [I am using Alpine Linux stable](/foss) as my main daily driver.

We have an old [iPod Classic (6th Gen) from a previous project](https://seekers.araw.xyz/repair-ipod/) that is just sitting unused.

This project lists the steps **to get the music
library from my Alpine Linux machine into the iPod**.

{{< toc >}}

## Assumptions

Before we start, I have the following ready:

- [iPod Classic, 6th Gen](https://apple.fandom.com/wiki/IPod_classic_(6th_generation)), modded with [iFlash Quad adapters](https://www.iflash.xyz)
    - 128Gb micro SD card
    - Synced previously with iTunes on a Mac
    - Note: I think the steps below would still work on an unmodded iPod
      with its original hard drive.
- iPod's original proprietary cord
- [Alpine Linux stable](https://www.alpinelinux.org/) installed on bare metal
    - In it, the entire music library

{{< btt >}}

## Install Rhythmbox for GUI needs

```
# apk add rhythmbox
```

Where `#` signifies that the command be run as root, i.e., with `doas`.
(On the other hand, `$` signifies that a command be run as the user.)

[Rhythmbox](http://www.rhythmbox.org/) is a FOSS-copy of iTunes, which
means it supports iPod devices.

{{< btt >}}

## Install GFVS

```
# apk add gvfs
```

Rhythmbox needs GNOME Virtual File System (GVFS) backend in order for it
to detect Apple devices when they are plugged in.

{{< btt >}}

## Install Gstreamer plugins

```
# apk add gstreamer gst-plugins-good
```

[Gstreamer](https://github.com/GStreamer/gst-plugins-good) is a
framework for streaming media that would allow Rhythmbox, among other
things, to scan your
library and import music from it during first setup.

{{< btt >}}

## Adjust Preferences in Rhythmbox

In the Rhythmbox, be sure to adjust **Preferences** like:

- Pointing to your music library and other audio files, including
  downloaded podcast episodes if you want.
- Under **Plugins** make sure that the "Portable Players -- iPod" box is
  checked. By default, it is checked.

{{< btt >}}

## Plug the iPod in and detect it

**Plug the iPod in**. If you check Rhythmbox, it won't appear there yet.

**Check the partition by running** `fdisk`
with the `-l` flag.

```
# fdisk -l

...

Disk /dev/sdc: 119.19 GiB, 127976345600 bytes, 31244225 sectors
Disk model: iPod            
Units: sectors of 1 * 4096 = 4096 bytes
Sector size (logical/physical): 4096 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes

...

```

In the sample output above, the iPod is under the disk `/dev/sdc`.

But we have to be specific. When we **run** `lsblk` we'll notice that there
are two more partitions within it.

```
$ lsblk

NAME    MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
...
sdc       8:32   1 119.2G  0 disk
├─sdc1    8:33   1   248K  0 part
└─sdc2    8:34   1 119.2G  0 part
...

```

In the sample output above, we can surmise that `sdc2` is the more
relevant block, because its size is significantly larger than `sdc1`.
This is what we will mount to our system.

{{< btt >}}

## Mounting the iPod

Mounting means attaching the file system of a device---in this case, the
iPod---to the computer. As we have noticed in some Linux distros,
including Alpine, physically plugging a device in via USB port doesn't
necessarily make it available to the system, unless we "mount" it.

[Hierarchical File System](https://en.wikipedia.org/wiki/Hierarchical_File_System_(Apple)) (HFS) is the file system in the iPod. To access it, we can get Apple's needed utilities by **installing** `hfsprogs`:

```
# apk add hfsprogs
```

Then **create a mounting point** (a directory through which the computer can
access the iPod's files):

```
# mkdir -p /mnt/ipod
```

Now, we can **mount the iPod** to the computer, running this command:

```
# mount -t hfsplus /dev/sdc2 /mnt/ipod
```

The command above means that we are mounting the iPod (`/dev/sdc2`) to
our mounting point (`/mnt/ipod`), specifying that the file system is
Apple's HFS (`-t hfsplus`).

To check if it has been properly mounted, run `lsblk` and inspect the
output:

```
$ lsblk

NAME    MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
...
sdc       8:32   1 119.2G  0 disk
├─sdc1    8:33   1   248K  0 part
└─sdc2    8:34   1 119.2G  0 part /mnt/ipod
...

```

`sdc2` (the relevant partition of the iPod) is now mounted to the point we just created, `/mnt/ipod`

{{< btt >}}

## Success!

Navigating through the Rhythmbox's GUI, the iPod should be shown now under
**Devices** on the left sidebar. We can now **Sync** music (and/or
podcasts) and, later,
**Eject** the iPod.


{{< figure src="/image/rhythmbox.png" alt="Graphical User Interface of Rhythmbox when an iPod is plugged in, ready for syncing" caption="Current line up; name of iPod redacted" >}}

**WARNING**: When syncing, the music in the Linux machine *will replace*
any existing music in the iPod. I haven't found a way to transfer the
existing songs in the iPod to the Linux machine, and I'm not sure if
it's even possible, but that is outside the scope of this post.

{{< btt >}}

## Ejecting, unmounting, and unplugging

Before unplugging, click **Eject** in the Rhythmbox GUI. Not doing this
will throw an error when we try to unmount it, saying that device is
"busy".

When that's done,
let's go back to the command line and **unmount the iPod**:

```
# umount /mnt/ipod
```

You can now safely unplug the iPod.

{{< btt >}}

## Appendix

... or, possible avenues to explore in the future:

- If you have your old music in an Apple Mac[book], you can sync it
  first with the Linux machine using an app like
  [Syncthing](https://syncthing.net), a cross-platform file
  synchronization program. This way, you don't wipe out the existing
  songs in your iPod when you sync it with the Linux machine following
  the steps above.
- It's possible to replace the iPod's stock firmware with
  [Rockbox](https://www.rockbox.org/), a FOSS replacement firmware for
  music players with iPod support. Rockbox also removes Apple's
  limitation on the memory limit. So, if for example you have an iFlash Quad
  adapter, with each of the slots mounted with, say, 128 Gb micro SD
  card, you now have access to ~512 Gb worth of memory. Imagine the
  number of legally obtained songs and albums that can fit in that space!
- Aside from Rhythmbox, there are other music players that supposedly
  have support for iPods. Briefly, I played with
  [Strawberry Music Player](https://www.strawberrymusicplayer.org/) which looks
  promising, but haven't had the chance to actually use it to sync music
  with iPod.

{{< btt >}}
