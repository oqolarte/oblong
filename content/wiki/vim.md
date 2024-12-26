---
title: "VIM the text editor"
date: 2024-12-21
draft: false
math: false
---

wElL, AckChUalLyee, I am using [neovim](https://neovim.io), a more
modern version of Vim.

Compiled here are some edge cases in vim:

## Word count of selected text, without exiting vim

- `g``ctrl+g` displays the current details based on where the cursor is
- If used when a text is selected, it outputs the number of words in
  that selection

See `:help word-count`
