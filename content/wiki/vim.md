---
title: "VIM the text editor"
date: 2024-12-21
draft: false
math: false
---

More specifically, I am using [neovim](https://neovim.io), a more
modern version of Vim.

Compiled here are some edge cases in vim.

{{< toc >}}

## Word count of selected text, without exiting vim

- `g` `ctrl+g` displays the current details based on where the cursor is
- If used when a text is selected, it outputs the number of words in
  that selection

See `:help word-count`

## Vimwiki

This section is more about vimwiki. See [project details in the GitHub repo](https://github.com/vimwiki/vimwiki).

### Search through entire vimwiki

Run `:VimwikiSearch /pattern/` (the trailing slash is important).
`:VimwikiSearch` can also be shortened to `:VWS`.To go to the next hit
run `:lnext` and `:lprevious` for the previous.

For more details you can look into the help pages `:h :VimwikiSearch`.
