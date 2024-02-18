---
title: "minimal CSS template"
date: 2023-02-07
draft: false
---

The [CSS](/css) below attempts to be minimal while giving a decent user experience.
It's usable, but might need some more tweaks.

```
html {
        padding: 1.5rem;
        max-width: 70ch/2ch;
        font: 20px/1.4;
        margin: auto;
}
footer, header {margin: 1rem 0;}
html, ul {padding: 0 1rem;}
li {padding: 0.125rem 0;}
small {
        font-size: 0.8rem;
        line-height: 1.2rem;
}
blockquote {
        border-left: 0.05rem solid #ccc;
        margin: 0;
        padding-left: 0.8rem;
}
pre code {white-space: pre-wrap;}
```

or, the super-minimal:

```
main {max-width:70ch/2ch; padding:1.5rem; margin:auto;}
```
