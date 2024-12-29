---
title: "Notes on FFmpeg"
date: 2022-12-19
draft: false
---

[FFmpeg](https://ffmpeg.org/)
is a powerful command-line tool to edit videos.

## Cut Videos and clips

`ffmpeg -i [INPUT FILE] -t 8 -c copy [OUTPUT FILE]`

where:

`-t 8` -- Only write out the first 8 seconds.  
`-c copy` -- instead of re-encoding the entire file,
this command just copies it, making rendering the output faster


`ffmpeg -ss 00:16:00 -to 00:16:30 -i [INPUT FILE] -c copy [OUTPUT FILE]`

where:

`-ss 00:16:00` -- is the time stamp where the program would start writing data
to output file.  
`to 00:00:30` -- is the end time stamp of the clip you want to capture.
`-i [INPUT FILE]` -- is placed after the time stamp, so ffmpeg wouldn't have to
read the file from the beginning first.
This way, the program will start reading (and immediately writing)
at the specified time stamp,
i.e., `00:16:00` in this case.

## Command loop

Sample Bash [script](/noautorotate.sh) for looping ffmpeg commands

## Resources

[How to: Prepare video for YouTube with FFmpeg](https://obrien.engineer/how-to-prepare-video-for-youtube-ffmpeg/)
