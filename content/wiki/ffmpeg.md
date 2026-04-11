---
title: "Notes on FFmpeg"
date: 2022-12-19
draft: false
---

[FFmpeg](https://ffmpeg.org/)
is a powerful command-line tool to edit videos.

{{< toc >}}

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

## Convert mp4 to GIF

`ffmpeg -i /path/to/video.mp4 -vf "fps=24,scale=500:1" -loop 0 output.gif`

where:

`-i /path/to/video.mp4` -- is the input file

`-vf "fps=24,scale=500:1"` -- sets the frames per second (fps) and
resizes to 500 pixels wide and automatically determine
the height while preserving the aspect ratio.

`-loop 0` -- a value of 0 is infinite looping

`output.gif` -- is the output file

## Command loop

Sample Bash [script](/noautorotate.sh) for looping ffmpeg commands

## Resources

[How to: Prepare video for YouTube with FFmpeg](https://obrien.engineer/how-to-prepare-video-for-youtube-ffmpeg/)
[How do I convert a video to GIF using ffmpeg, with reasonable quality?](https://superuser.com/questions/556029/how-do-i-convert-a-video-to-gif-using-ffmpeg-with-reasonable-quality)
