---
title: "iPod Classic syncing with Alpine Linux"
date: 2024-10-03T03:00:04+08:00
keywords: ["ohio olarte", "oqolarte", "oqo"]
draft: false
math: false
---

{{< done >}}

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

Where `#` signifies that the command be run as root, i.e., with `doas`.
(On the other hand, `$` signifies that a command be run as the user.)

[Rhythmbox](http://www.rhythmbox.org/) is a FOSS-copy of iTunes. It
helps that it also supports iPod, that is, if the machine can detect the
device.

## Install GFVS

```
# apk add gvfs
```

Rhythmbox needs GNOME Virtual File System (GVFS) backend in order for it
to detect Apple devices when they are plugged in. Good thing it's in the
packages and can be installed easily:

## Install plugins

```
# apk add gstreamer gst-plugins-good
```

These install plugins for
[Gstreamer](https://github.com/GStreamer/gst-plugins-good), a framework
for streaming media, that would allow Rhythmbox to scan your
library and import music from it.

## Adjust Preferences in Rhythmbox

Be sure to adjust **Preferences** like:

- Pointing to your music library and other audio files, including
  downloaded podcast episodes.
- Under **Plugins** make sure that the "Portable Players -- iPod" box is
  checked. By default, it is checked.

## Plug the iPod in and detect it

Plug the iPod in and check under what partition it is by running `fdisk`
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

But we have to be specific. When we run `lsblk` we'll notice that there
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
relevant block. This is what we will mount to our system.

## Mounting the iPod

Mounting means attaching the file source---in this case, the iPod---to
the computer. In some Linux distros, including Alpine, physically
plugging a device in via USB port doesn't necessarily make it available
to the system, unless we "mount" it.

[Hierarchical File System](https://en.wikipedia.org/wiki/Hierarchical_File_System_(Apple)) (HFS) is the file system in the iPod. To access it, install `hfsprogs`.

```
# apk add hfsprogs
```

Then create a mounting point (a directory/folder through which we can
access the iPod's files):

```
# mkdir -p /mnt/ipod
```

Now, we can mount the iPod to the computer, running this command:

```
# mount -t hfsplus /dev/sdc2 /mnt/ipod
```

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

## Success!

Navigating through the Rhythmbox's GUI, the iPod should show now under **Devices** on the left sidebar. We can now **Sync** muzak and, later,
**Eject** the iPod.


{{< figure src="/image/rhythmbox.png" alt="Graphical User Interface of Rhythmbox when an iPod is plugged in, ready for syncing" caption="Current line up" >}}

## Ejecting, unmounting, and unplugging

Before unplugging, click **Eject** in the Rhythmbox GUI. Not doing this
will throw an error when we try to unmount it, saying that device is
"busy".

When that's done,
let's go back to the command line and unmount the
iPod:

```
# umount /mnt/ipod
```

You can now safely unplug the iPod.
