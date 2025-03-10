---
title: "picoCTF 2024 Challenges"
date: 2025-03-03T14:10:30+08:00
keywords: ["ohio olarte", "oqolarte", "oqo"]
draft: false
math: false
---

{{< ongoing >}}

Notes on how I tried to solve CTF problems in
[picoCTF](https://picoctf.org) **2024**. I may or may not write about each
of the problem I go through. Also note that picoCTF has just released
their [2025 challenge](https://play.picoctf.org/events/74)

{{< toc >}}

## Verify

- SSH into the server as per instructions, and `ls` to view existing
  files.
- There are lots of files in the `files/` directory, but only one of it
  has the same hash as that in the `checksum.txt`
- To filter which exact file: `sha256sum files/* | grep -f checksum.txt`
    -  `sha256sum files/*` [creates hashes](/hash-functions) for each of
       the file in the `files/` directory
    - The result is then piped to ("`|`") `grep`, which then checks the
      file (with the `-f` option) `checksum.txt` which contains the
      exact hash to look for
    - It turns out that `files/2cdcb2de` is that file.
- Run `./decrypt.sh files/2cdcb2de` to obtain the flag

{{< btt >}}

## WebDecode

- Go to the link provided.
- Inspect each web page, that is, view its source code. The About page
  is particularly interesting.
- In the source code of the About page, this line of HTML code looks
  interesting: `<section class="about"
  notify_true="cGljb0...[base64 string]">`
- The string of text inside the quotes in `notify-true` turns out to be
  base64, which can then be decoded.
- To decode: `echo cGljb...[base64 string] | base64 -d` to obtain the flag.

{{< btt >}}

## Unminify

- Go to the link provided.
- Inspect the web page. The source code is "minified," which means it
  has been reduced in size---for example, by deleting "unnecessary" line
  spaces---without reducing functionality.
- It's a fairly simple static site. Scrolling horizontally, obtain the
  flag by looking for the string of text that matches the format
  `picoCTF{TEXT}`.

{{< btt >}}

## Time machine

- Download the `challenge.zip` file and `unzip` to access the files in
  the `drop-in/` directory.
- `cd drop-in/` and `ls` to inspect the files.
- `cat message.txt` to reveal a clue, which is something about
  "look[ing] at my commit history"
- The other set of files is `.git/`. To view commit history and obtain
  flag, type `git log`.

{{< btt >}}

## Secret of the Polyglot

- Download the file, which is in pdf format
- Opening the file using a PDF reader (I use `zathura`), it reveals a
  mostly blank page, except for this string of text somewhere in the
  middle of the page: `1n_pn9_&_pdf_724b1287}`
- The only clue for this problem mentions "opening the file in different ways."
- `xdg-open flag2of2-final.pdf` reveals an image with this seemingly
  incomplete text: `picoCTF{f1u3n7_`
    - True enough, this is not the flag.
- Notice the curly brackets (`{ }`), though, in both the strings of text
  that we have so far. What if we concatenate the two strings?
- This will produce `picoCTF{f1u3n7_1n_pn9_&_pdf_724b1287}` which is
  indeed the correct flag.

{{< btt >}}

## IntroToBurp

- Launch instance and visit the link.

{{< btt >}}
