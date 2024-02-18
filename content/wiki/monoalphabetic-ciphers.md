---
title: "Frequency Analysis of Monoalphabetic Ciphers"
date: 2023-11-24
draft: false
---

Patterns are key.
Recognizing them is a skill needed in [cryptanalysis](/cryptanalysis).

Frequency analysis of intercepted ciphertext can give clues to aid the
cryptanalyst, at least to degree that non-randomness in the ciphertext
is due to non-randomness in the plaintext.

One of the drawbacks of frequency analysis is it's accuracy is directly
proportional to the length of text being analyzed.

Dialects of a language can also affect the letter frequencies.
For example, we have "analyze" for American English,
vs "analyse" for British English.

Remember also the time dimension of the language.
An obvious example is comparing Old English vs Modern English,
the latter being completely foreign-looking to today's average person.
But even decades in [communication](/communication) using the same language
will give [slightly?] different results.

Finally, Alice and Bob
usually take some steps to intentionally distort the patterns that are
manifested in the ciphertext.

## Single-character frequencies

- "etaoin shrdlu" - order of frequency of 12 most commonly used letters
  in English language.
        - Most frequent 6 characters account for about 50% of symbols in
          a typical English text
- Linguists also use letter frequency analysis as rudimentary technique
  to identify a language.
- Also plays a role in games like Hangman, Scrabble, Wordle, Wheel of
  Fortune.
- Single-character frequency analysis is a significant break into a
  monoalphabetic cipher.
- But as powerful as it is, single-character frequency analysis isn't
  sufficient to crack a cipher system.

## Multi-character frequencies

- Only sequences that appear multiple times are useful. Assuming the
  English language:
        - 26^2 = 676 diagraphs
        - 26^3 = 17,576 trigrpahs
        - 26^4 = 456,976 quadgraphs
        - To be useful, we need a given sequence to
          appear more than once, preferably at least 3 times. Keep in
          mind that length of ciphertext affects the analysis.
        - 250-character ciphertext needs rates above ~1%.
                - Digraph: TH, HE, IN, ER, AN, RE + ~10 etc.
                - Trigraph: THE (AND, ING @ 0.75%; ENT, ION @ 0.5%)
- Rare eventers can also help. Assuming the English language:
        - like how Q is almost always followed by U
        - J, Z almost always followed by a vowel
- What are the letters that most words end in?
        - In English, more than half of words end in E, T, D, S.
- Single- and double-letter frequencies show significant and useful
  differences. In English language:
        - For example, "ee" is the most common double-letter, followed
          by "tt". There's *no* occurence of "qq".
- A diagraph the almost never occurs in plaintext is likely the last
  character of one word and the first character of another.
