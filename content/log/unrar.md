---
title: "How to UnRAR files in Linux Command Line"
date: 2021-05-05T01:50:44+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "unrar in linux", "how to unrar in linux", "unrar in linux debian", "debian unrar"]
draft: false
---
- Added new sections in [Server](/server) project.
Also edited the wording so that voice is mostly first-person.
- Added new entries to [Imbentori](/imbentori) project.
- Edited this site's footer.
Notably, I changed from 512KB Club to the leaner 250KB Club.
- Edited some lines in [Always Carry](/alwayscarry) project.

Recently, I had to download some file from the internet.
But said file is compressed into `.rar`.

According to the Debian packages, `sudo apt install unrar` won't work anymore because it "is missing, has been obsoleted, or is only available from another source."
I don't deal with that.

So here's my workaround.
The following assumes you[^you] have a Debian-like Linux 64-bit distro,
and are comfortable with the terminal.

[^you]: I'm actually talking to my future self.
This is my notes.

## My UnRAR Workaround

1. Get RAR archiver from [RARLAB Archiver](https://www.rarlab.com/download.htm).
You can either:
   - Go their website, and click on the link that matches your system; or
   - Enter in the terminal:
   ```shell
   curl -LO https://www.rarlab.com/rar/rarlinux-x64-*.tar.gz
   ```
2. Go to the folder where it got downloaded to.
Use `tar` to extract the files
   ```shell
   tar -xvzf rarlinux-x64-*.tar.gz
   ```
   `-x` option means extracts the file/s from tar  
   `-v` option means verbose, to see the extraction progress  
   `-z` option decompresses all the files within, if any  
   `-f` option indicates the filename you'll work on
3. Go into the extracted folder.
It should have a `Makefile`, `rar` and `unrar` executables, among other files.
Run `make` like so:
   ```shell
   cd rar/
   sudo make
   ```
   This will copy the executables to the `/usr/local/bin` and is now available to the user (you!).
4. Time to extract the `.rar` file you got there:
   ```shell
   unrar e legallyDownloadedFile.rar
   ```
   `e` option means extract.

That's it.
