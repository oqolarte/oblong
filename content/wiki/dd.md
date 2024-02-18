---
title: "Notes on `dd`"
date: 2023-12-26
draft: false
---

`dd` (data duplicator, or "data destroyer") is a disk utility in many Unix programs.

## To erase a pen (USB) drive "quicker"

`sudo dd if=/dev/zero of=/dev/sdd bs=1M conv=noerror,sync
status=progress`

where `sdd` is the drive specified in `lsblk`

## Create bootable USB from ISO file on Linux

1. Find the USB device name using `lsblk` command
2. Unmount and format USB device:
        - `sudo umount /dev/sdb*` # where `sdb` is the name of device
          identified using `lsblk` command from last step
        - `sudo mkfs.vfat -I /dev/sdb`
3. Create bootable USB usind `dd`:
        - `cd ~/Downloads` # where `Downloads` is the path to directory
          where the ISO was downloaded to
        - `sudo dd bs=4M if=filename.iso of=/dev/sdb status=progress`
