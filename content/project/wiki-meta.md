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
topics compiled over a period of time.
When these notes are linked to one another so that they
might form new ideas, then their sum becomes a knowledge
base---a low-tech brain if you will---that one can use to help with
Thinking.

{{< btt >}}

## Assumptions

This write-up assumes the following that the reader:

- knows how to use both [Vimwiki](https://vimwiki.github.io/) and
  [neovim](https://neovim.io) (or [vim](https://www.vim.org));
- uses [Hugo](https://gohugo.io) as their static site generator for
  their website;
- is interested in sharing their PKM (i.e., in the form of VimWiki) to
  the public via their website

With that, read on.

{{< btt >}}

## Markdown experience for your wiki

The out-of-the-box `.wiki` syntax of Vimwiki is a derivative of
Markdown, but not the variant that's widely adopted. So, for a cohesive
experience, I included the following snippet `init.vim` it so I can use *the*
Markdown syntax, that is, text files with `.md` extension:

```
let g:vimwiki_list = [{'path': '~/path/to/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
```

With this I can now write notes using `.md` and NOT `.wiki`, which is important because Hugo only works with the former.

{{< btt >}}

## Integration with Hugo

### Create a wiki section in Hugo directory

I made a separate section in Hugo's site's folder structure, under
`content`, called `wiki`, into which I'll copy my PKM files. (For more
info on this, [Hugo's Quick Start](https://gohugo.io/getting-started/quick-start/) is a helpful
guide.)

```
mkdir content/wiki/
```

{{< btt >}}

### Laying out the wiki, Hugo way

Ensure that there is a `wiki` folder under
`layouts/`:

```
mkdir layouts/wiki/
```

I populate this folder with `single.html` and `list.html` files; the former is
a template for how each page in the wiki would look like, and the latter
is for the list of all the notes.

The following are the stripped down version for `single.html`:

```
{{ define "main" }}

<h1>{{ .Title }}</h1>

{{ .Content }}

{{ end }}

```

And now, the `list.html`:

```
{{ define "main" }}

<h1>{{ .Title }}</h1>

{{ range .Pages.ByLastmod }}
<a href="{{ .RelPermalink }}">{{ .Title }}</a><br>
{{ end }}

{{ end }}
```

{{< btt >}}

### Index files

I created an `_index.md` file placed under the `content/wiki/` section, and this just contains the title of that page, like so:

```
---
title: "Digital Garden 🌱"
---
```

Meanwhile, recall VimWiki also has its own `index.md` (originally
`index.wiki` out of the box). When copying the offline PKM files into
`content/wiki/` section, we don't need to copy this particular index
file to not cause any weird issues.

To be clear, I don't have my PKM within this Hugo's site directory. I am
keeping it in a separate folder, to have compartmentalization. This
friction is non-issue for now as will be apparent in the next few
commands.

{{< btt >}}

### Copy PKM files to Hugo site

To migrate, I run a few commands in my terminal:

```
cp -rv /path/to/offline-wiki/*.md /home/user/site-directory/content/wiki/
rm /home/user/site-directory/content/wiki/index.md
```

- The `cp` line just copies all `.md` files to the wiki section of this
site.
- The `rm` line deletes the index file of the offline wiki

**PRO TIP**: To make this easier, I have included these lines in a Makefile that builds and publishes my website. When I run `make build` in my terminal, my
blog update now includes the latest changes from my wiki. (Note: making
a Makefile is outside the scope of this post.)

{{< btt >}}

## Preparing each note to be Hugo-ready

For this to work, each note must be Hugo-ready. Writing the notes in
Markdown is already half the work. Next is to ensure each note has a
front matter. For more info on this, check Hugo's page on [Front Matter](https://gohugo.io/content-management/front-matter/).

{{< btt >}}

### Automatically add front matter

To automatically add front matter each time you create a note, create a
script that the VimWiki can call. I'll call this `gen-wiki-template` and
place it on Vim config directory, say `~/.vim/bin/gen-wiki-template`.
The script itself contains the following lines:

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
your front matter needs. What it does is it prints ("echoes") a
templated front matter, including the date on which the note is created.

{{< btt >}}

### Config the `init.vim` to call the script

To automatically call the script, that is, to add the
front matter, add this line below to your vim `init.vim`.

```
au BufNewFile ~/path/to/wiki/*.md :silent 0r !~/.vim/bin/gen-wiki-template '%'
```

This means that every time a new file (note) is created within the wiki
folder, `gen-wiki-template` script is run. The script just echoes the
front matter on the blank file.

Having front matter in the wiki is helpful because I can set `draft:
true` and not worry about making a note publicly available yet still
accessible to me (via offline PKM).

{{< btt >}}

## Generate!

At this point, when you generate your site using `hugo` command, your
wiki should now be included and is ready to be published online.
