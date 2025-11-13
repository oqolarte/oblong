---
title: "Video Log - November 2022 "
date: 2022-12-27T11:50:58+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "oqo"]
draft: false
---

{{< done >}}

This small project is my attempt to shoot videos using only my smartphone,
and edit the clips using only `ffmpeg`.

The result, honestly, is... *not* for public viewing,
but it's up on YouTube if you want see the 18-minute-long hot mess.

YouTube link: https://www.youtube.com/watch?v=vvaxJaNAtY8

{{< toc >}}

## Shooting

The idea:
to shoot at least a minute's worth of clip/s per day.
At the end of the month,
I should have at least half an hour's worth of raw footage to work with.

The subject: the most interesting parts of my daily life.

In the spirit of accessibility and low-budget vlogging,
I use the camera *and* built-in microphone of my OnePlus 5T,
which is also the smartphone I daily-drive.

{{< btt >}}

### What worked

Vlogging is accessible,
because all the gear I need is in a single device that can fit in my pocket.

{{< btt >}}

### What didn't work

A lot!

I thought 720p would suffice,
but the final cut would be glitchy and grainy,
especially on big screens.
I should have opted for the max resolution (4K) so I have more wiggle room come
editing time.

Monopod and/or tripod would have helped a lot in physically stabilizing many of the clips.

Of course,
a crash course on videography,
cinematography,
and/or smartphone filming could have helped!

{{< btt >}}

## Editing

As said, I used `ffmpeg`, a command-line utility to edit the videos.
I'm stretching the definition of the word "edit" here,
but I only trimmed, re-encoded, and concatenated the videos.

{{< btt >}}

### Trimming Videos

```sh
ffmpeg -i [INPUT FILE] -t 8 -c copy [OUTPUT FILE]
```

where:

`-t 8` -- Only write out the first 8 seconds.  
`-c copy` -- instead of re-encoding the entire file,
this command just copies it, making rendering the output faster.

```sh
ffmpeg -ss 00:16:00 -to 00:16:30 -i [INPUT FILE] -c copy [OUTPUT FILE]
```

where:

`-ss 00:16:00` -- is the time stamp where the program would start writing data
to output file.  
`to 00:00:30` -- is the end time stamp of the clip you want to capture.
`-i [INPUT FILE]` -- is placed after the time stamp, so ffmpeg wouldn't have to
read the file from the beginning first.
This way, the program will start reading (and immediately writing)
at the specified time stamp,
i.e., `00:16:00` in this case.

{{< btt >}}

### Re-encoding

Some of the clips get flipped upside down
(i.e., rotated 180 degrees)
in one of the draft cuts.

[This is likely because](https://video.stackexchange.com/questions/35873/why-does-ffmpeg-flip-upside-down-the-video-when-concatenating-with-f-concat)
some of them have a rotation angle,
that gets carried over the succeeding clips.

To be sure, I re-encoded all of the clips with `noautorotate` flag.

I made an automation
[bash script](https://stackoverflow.com/questions/21634088/execute-ffmpeg-command-in-a-loop)
that loops through all of the clips,
and re-encodes them one by one:

```bash
#!/bin/bash

find . -name '*.mp4' | while read f; do
        ffmpeg -nostdin -i "$f" -c:a copy "${f%.*}x.mp4"
done
```

{{< btt >}}

### Concatenation

In this context,
concatenation means linking all the clips to make a final cut.
[More info here](https://trac.ffmpeg.org/wiki/Concatenate).

```sh
ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.mp4
```

where:

`-f concat` -- is the concatenation flag.  
`-safe 0` -- is safe mode for concat demuxer, set to 0.  
`mylist.txt` -- is the list of video clips to be concatenated,
which follows the format:

```txt
# contents of mylist.txt
# this is a comment
file '/path/to/file1.mp4'
file '/path/to/file2.mp4'
file '/path/to/file3.mp4'
```

To automatically generate `mylist.txt`,
either of the following bash command will do:

```sh
# with a bash for loop
for f in *.mp4; do echo "file '$f'" >> mylist.txt; done
# or with printf
printf "file '%s'\n" *.mp4 > mylist.txt
```

### What worked

Using only the command line to edit videos is
in itself an interesting endeavor to take.

`ffmpeg`, to my knowledge, uses far less system resources
compared to GUI equivalents.

For relatively simple edits,
like the one I did for this project,
`ffmpeg` works well.

### What didn't work

`ffmpeg`, as a video editing "suite",
will not work on 99% of the film projects.

To my knowledge,
dedicated GUI video editors like [Kdenlive](https://kdenlive.org/en/)
offer more features and
objectively has the potential to produce better edits.

Some of my clips would have been better if each of them
were digitally stabilized.
That way, the final cut would have been more tolerable to watch.

A GitHub project, [VidStab](https://github.com/georgmartius/vid.stab),
is worth checking.

{{< btt >}}

## Conclusion

Using simpler ways to produce a quality video
with gear I already have can be tricky,
but it's a challenge I didn't do just for the sake of it,
but for seeking unorthodox methods of tapping my creativity.
While this is possible, it has a steeper learning curb.

Videography is a complex discipline,
one that I can't learn in the course of one month.
I suspect, though, that I can give a decent output if I do this thing more.

{{< btt >}}
