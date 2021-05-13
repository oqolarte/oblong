---
title: "Dada: Text-only Local News"
date: 2021-05-05T21:35:49+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "web scraping news", "python web scraping news"]
draft: true
---
## Status: Open {.statusOpen}

This is my attempt to scrape the news sites using Flask and BeautifulSoup,
both of which are in Python.

*Dada* is a working title for this project.
It's based on the Filipino expression, "*Puro ka dada!* (You're full of empty talk!)"

Now, by all means, this site won't be empty talk.
What I hope it would be, though, is text only.

The four news sites that I'll be scraping are:
- [Inquirer](https://www.inquirer.net) (INQ)
- [Manila Bulletin](https://mb.com.ph) (MB)
- [Philippine Star](https://www.philstar.com) (PHS)
- [Rappler](https://www.rappler.com) (RAP)

I know that there are other online newspapers in the Philippines,
but I'll be focusing my efforts in these four.

## Why? Why not?

1. News websites are needlessly heavy.
Ours here in the Philippines, more so.
According to [GTMetrix](https://gtmetrix.com), the weight of each site is:
   |Site | Compressed | Uncompressed |
   |-----|-----------:|-------------:|
   |INQ  | 8.4 MB     | 18.7 MB      |
   |MB   | 5 MB       | 11.3 MB      |
   |PHS  | 3.3 MB     | 12.9 MB      |
   |RAP  | 3 MB       | 7.4 MB       |

   That's an average of ~5 MB (~12.6 MB uncompressed)!
2. As we demand for better internet speeds from our service providers,
we should also design lightweight websites.
A news site, by drastically reducing the weight of its webpages,
will be more accessible, as is its purpose!
3. No ads, trackers, pop-ups, videos, graphics, interactive elements.
It will be a boring site, which is good:
no one needs to consume news 24/7.

## Inspiration

Text-only news sites are not new.
Here are some, that are still live and kept up to date:
- [National Public Radio](https://text.npr.org/)
- [CNN](https://lite.cnn.com/en)
- [The Christian Science Monitor](https://www.csmonitor.com/layout/set/text/textedition)
- [Legible News](https://legiblenews.com/)
