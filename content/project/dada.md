---
title: "Dada: Text-only Local News"
date: 2022-04-10T01:35:49+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "web scraping news", "python web scraping news"]
draft: false
---
{{< closed >}}

I haven't had a real chance to work on this project.
Now that I'm making it public,
and it's already dead!

The premise would have been simple:
text-only news sites.

For more experienced developers,
the implementation would have been simple, too.

{{< toc >}}

## Introduction

*Dada* was a working title for this project.[^dada]
It's based on the Filipino expression,
"*Puro ka dada!* (You're full of empty talk!)"

[^dada]: While one could make connections,
this is entirely different from the art movement of similarly spelled name.

Now, by all means, this concept won't be empty talk.
What I hope it would be, though, is text only.

The four news sites worth considering for now are:
- [Inquirer](https://www.inquirer.net) (INQ)
- [Manila Bulletin](https://mb.com.ph) (MB)
- [Philippine Star](https://www.philstar.com) (PHS)
- [Rappler](https://www.rappler.com) (RAP)

I know that there are other online newspapers in the Philippines,
but I'll be focusing my efforts in these four.

{{< btt >}}

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
1. As we demand for better internet speeds from our service providers,
we should also design lightweight websites.
A news site, by drastically reducing the weight of its webpages,
will be more accessible, as is its purpose!
1. No ads, trackers, pop-ups, videos, graphics, interactive elements.
It will be a boring site, which is good:
no one needs to consume news 24/7.

{{< btt >}}
## Inspiration

Text-only news sites are not new.
Here are some, that are still live and kept up to date:
- [National Public Radio](https://text.npr.org/)
- [CNN](https://lite.cnn.com/en)
- [The Christian Science Monitor](https://www.csmonitor.com/layout/set/text/textedition)
- [Legible News](https://legiblenews.com/)

{{< btt >}}
## Abandoning the Project (for now?)

I personally don't want to make something I wouldn't regularly use.

Now, I'm not a fan of news sites to begin with,
nor do I consume news all that much.

{{< btt >}}
## Recommendations

1. Implement this using a POSIX shell script.
Scrape content from news sites,
and format it in HTML + CSS on the local machine,
before pushing to live server.
1. Implement this using Python,
possibly by combining Beautiful Soup and Flask.
1. Implement by using your favorite programming language
(C and Go comes to mind).

## Similar Project/s

[Neuters.de](https://neuters.de) is an alternative frontend to Reuters,
implemented using Rust programming language.
