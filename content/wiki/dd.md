---
title: "Notes on `dd`"
date: 2023-12-26
draft: false
---

`dd` (data duplicator, or "data destroyer") is a disk utility in many Unix programs.

{{< toc >}}

## To erase a pen (USB) drive "quicker"

`sudo dd if=/dev/zero of=/dev/sdd bs=1M conv=noerror,sync status=progress`

where `sdd` is the drive specified in `lsblk`

This adds zeroes to the drive, i.e., deleting any signicant data in it.
This is to avoid any leftover superblocks or other metadata which could
confuse the OS when detecting it.

### Cross-platform file system

After wiping a drive with zeroes, it's time to add filesystems in it.
Two most popular cross-platform are [Universal Disk Format](https://en.wikipedia.org/wiki/Universal_Disk_Format) (UDF) and
[NT File System](https://en.wikipedia.org/wiki/NTFS-3G) (NTFS-3G).

#### UDF

1. Install (on Alpine linux): `doas apk add udftools`
2. Create file system: `mkudffs --media-type=hd --blocksize=512
   /dev/sdx`
3. Reference: [Using UDF on a USB flash drive](https://superuser.com/questions/39942/using-udf-on-a-usb-flash-drive)

### Create bootable USB from ISO file on Linux

1. Find the USB device name using `lsblk` command
2. Unmount and format USB device:
        - `sudo umount /dev/sdb*` # where `sdb` is the name of device
          identified using `lsblk` command from last step
        - `sudo mkfs.vfat -I /dev/sdb`
3. Create bootable USB usind `dd`:
        - `cd ~/Downloads` # where `Downloads` is the path to directory
          where the ISO was downloaded to
        - `sudo dd bs=4M if=filename.iso of=/dev/sdb status=progress`
