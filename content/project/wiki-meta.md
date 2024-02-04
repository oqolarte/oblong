---
title: "Wiki by Hugo and Vimwiki"
date: 2024-01-30T06:37:13+08:00
keywords: ["ohio olarte", "oqolarte", "oqo"]
draft: false
math: false
---
{{< ongoing >}}

If you meant to check my digital garden, click here: [Wiki](/wiki).

This page talks about the current implementation of said digital garden.

{{< toc >}}

## Personal Knowledge Management (PKM) System

Having a second brain is getting more popular.
In it's simplest form, it's a bunch of personal notes on different
topics. When these notes are linked to one another so that they
encourage formation of novel ideas, then their sum becomes a knowledge
base---a low-tech brain if you will---that one can use to augment that thing
between one's ears.

Personally, digital note-taking systems make good second brains.
And there are a lot of them.

I use [Vimwiki](https://vimwiki.github.io/) on top of
[neovim](https://neovim.io) text editor.
That means if you aren't already using Vim or neovim as your default
text editor, Vimwiki might not be for you.
Otherwise, read on.

The out-of-the-box `.wiki` syntax of Vimwiki is a derivative of
Markdown. It can be confusing at first, though. So, for a cohesive
text-editing experience, we'll tweak it so that we can use actual
Markdown syntax (important for blogging in Hugo).

To do so, I configured my `init.vim` to have the
following snippet:

```
let g:vimwiki_list = [{'path': '~/path/to/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
```

I can now write my notes using `.md`

## Integration with Hugo

I use the static-site generator, [Hugo](https://gohugo.io) to generate
the HTML files of this blog.

To migrate my offline wiki to this blog, I made a separate section in this
site's folder structure, under `content`:

```
mkdir content/wiki/
```

I'm not building my wiki within the site directory and am keeping it in
a separate folder, to have compartmentalization. This friction is
non-issue for now.

To migrate, I run a few commands:

```
cp -rv /path/to/offline-wiki/*.md /home/user/site-directory/content/wiki/
rm /home/user/site-directory/content/wiki/index.md
```

The `cp` line just copies all `.md` files to the wiki section of this
site. The `rm` line deletes the index file of the offline wiki; I made a
separate "index" file for the wiki section. This solves the weird issues
of having two index files, one from Vimwiki, and one from Hugo build.

To make this easier, I include these lines in my Makefile which includes
other automation as well. When I run `make build` in my terminal, my
blog update now includes the latest changes from my wiki.

## Preparing each note to be Hugo-ready

For this to work, each note must be Hugo-ready. Writing the notes in
Markdown is already half the work. Next will be adding front matter to
each note.

### Front matter

According to Hugo's docs, [front matter](https://gohugo.io/content-management/front-matter/) is the
metadata of the file, containing, for example, title, tags, description,
etc.

To automatically add front matter each time you create a note, create a
script that the Vimwiki can call. I'll call this `gen-wiki-template` and
place it on Vim config directory, say `~/.vim/bin/gen-wiki-template`:

```
#!/bin/sh

isod=$(date +%F)

echo "---
title:
date: $isod
draft: false
math: false
---"
```

As you can see, it's a rather simple script. Feel free to edit to meet
your front matter needs.

### Config the `init.vim` to call the script

To automatically call the script, that is, to add the
front matter, add this line below to your vim `init.vim`.

```
au BufNewFile ~/path/to/wiki/*.md :silent 0r !~/.vim/bin/gen-wiki-template '%'
```

This means that every time a new file (note) is created within the wiki
folder, `gen-wiki-template` script is run. The script just echoes the
front matter on the blank file.

Having front matter in the wiki is helpful because I can set `draft: true` and not
make a note publicly available yet still accessible to me.
