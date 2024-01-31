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

## Personal Knowledge Management System

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

The out-of-the-box `.wiki` syntax of Vimwiki is a derivative of Markdown.
It can be confusing, though, if you're already using Markdown for other
text-based files (like blogging in Hugo).

To use actual Markdown syntax, I configured my `vimrc` to have the
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
