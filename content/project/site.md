---
title: "This Site: Colophon"
date: 2020-11-27T14:42:32+08:00
keywords: ["web development", "web design", "sustainable web design", "simple web design", "full stack web development", "full stack web design", "sustainable full stack web development"]
draft: false
---
## Status: On-going {.statusOnGoing}

The making of this site is itself a personal project.
In this oversized colophon[^colophon]
I'll tell you about my brutalist website,
the design of which is an accurate depiction of my knack for simplicity.

[^colophon]: Colophon is a brief statement containing information about the
  publication of a book. [Wikipedia](https://en.wikipedia.org/wiki/Colophon_(publishing))

The status is likely to stay **on-going**;
this site is always under construction.

{{< btt >}}
## Digital Garden

If you've been looking around for personal websites like I have, "digital garden" is a phrase that gets used often.

It is where webmasters carefully plant the seeds of ideas, and hope to grow them sustainably.
It's a more endearing term, I believe, than, say, a public-facing journal or simply blog.
They all function the same.

This site, then, is my digital garden.
Expect that things will be corrected, deleted, edited, fed, *grown*, depending on any number of factors, including the current state of things.
People change---they need to, lest they stagnate---and every fiber of their being changes with them, literally.

Like a real garden, tending this one also relaxes me.
It helps me reorganize my thoughts by weeding out
what's unnecessary.

{{< btt >}}
### Public Repository of Independent Research

Speaking of ideas, I will use this site as a publishing platform of the results of my research, if any at all. 
Research, in this context, will be very different from that within academia.
This "progressive" route bypasses the traditional way to earn a post-graduate degree.
After reading [Nadia Eghbal](https://nadiaeghbal.com)'s post, "[Reimagining the PhD](https://nadiaeghbal.com/phd)," I'm now more inclined to do this.
The downside is,
I don't get a certification.
But what are certifications anyway if not,
for better or worse,
a glorified piece of paper?

I can't also imagine spending at least three years getting a master's degree, holding on to the fact that it's "necessary" to further my career.
I am, more or less, happy with the opportunity cost of not dealing with it.

Instead of going through the application process for post-graduate studies, may I now enlist you, Dear Public, as my peer reviewer?
I hope you don't mind.

I never liked receiving rejection emails, but I get that they're needed, in that they let me know that I can go on with other applications.
At least, through this site, I (hopefully) wouldn't be receiving (unsolicited) rejection letters from anyone.

Finally, having the public as my peer reviewer, I think, opens interesting avenues for the stakeholders (me and the public).
There will always be people smarter than me.
Hopefully, I can pull some of their attention here to share their insights someday.

In this online space, let's assume that nothing is set to stone.
Through editing, I'm able to improve a body of content.
I can learn by doing, and sharing the entire process with you as I go.

{{< btt >}}
### Major Sections

This site is divided into two main sections: **Log** and **Projects**.

The Log, more than anything else, is a changelog of what has evolved since the last update.
It mainly captures the significant revisions in the busiest parts of the Site, which would be the Projects.
Each Log will start with a changelog.
After that, I'll try to incorporate some personal skits, in an attempt to add character.

The Projects is a list of the thing/s I'm currently pursuing.
Each one begins with Table of Contents (ToC), so that readers will have an overview of the topics ahead. 
Readers can click each topic in the ToC if they feel like jumping to that part already.
The write-ups will be a healthy blend of creative and technical writing, to prevent you from getting bored, something I won't afford to do in a formal setting.
Of course, I'll include citations properly.

There's RSS (RDF [Resource Description Framework] Site Summary,
or Really Simple Syndication), which is a web feed,
to which readers can subscribe to get updated.
To do that, one needs RSS readers.
Alternatively, lots of the modern email clients like Thunderbird, Microsoft Outlook, and Apple Mail, have their own built-in RSS reader, so you can use that as well, especially if you do the majority of your reading in an email client.
A web service is available along these lines: check out [RSS by email](https://rssby.email).

{{< btt >}}
## Front-end

As you are well aware, this site's design borders on brutalism.
Admittedly, it's the result of having only a working knowledge of HTML and CSS, and none of JavaScript.
It turns out that this is a feature, not a bug, for static websites anyway.

By foregoing intricate UI/UX design, I can focus on what matters most: *content*. 
Let me explain.

By simplifying the design, I'm making this site less bloated.
This means that:
- low-end and/or old computers with slow and/or outdated software can visit with little to no hassle on their end;
- locations with poor internet connectivity can still browse the content;
- improving accessibility is easier;
- the site loads fast because of no tracking, no custom fonts; and,
- no distractions.

I consider these points important as they all relate to my current situation.
In fact, websites should be guided by these principles.

{{< btt >}}
### Typography

Many designers would argue that typography should elevate the content,
and they'd be right.
What I'm doing here may not be the best practice for professional typographers,
but it gets the job done,
i.e. serve readable content.

And there are many ways to do that without compromising the overall experience
of readers.

I use *your* system's default font stack so your computer wouldn't
need to look elsewhere to render the fonts.
Well, technically, I prefer some fonts over others that you'll see in the next
two code blocks, but in case your system
doesn't have the fonts that I like, it falls back to the default typeface that
it does have.

I use serif for headings. This is the font stack that I use (as found in my
CSS):

```css
h1,h2,h3,h4,h5,h6 { font-family: Iowan Old Style, Apple Garamond, Baskerville, Times New Roman, Droid Serif, Times, Source Serif Pro, serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
        line-height:1.2
        }
```

And I use sans serif for body and the rest of the page.
While I'm at it, I made sure that there's enough negative space around bodies of
text.
This is what I have in my CSS:

```css
body {
        margin: 1em auto;
        max-width: 40em;
        padding: 0.7em;
        font: 1.2em/1.5 -apple-system, BlinkMacSystemFont, avenir next, avenir, segoe ui, helvetica neue, helvetica, Ubuntu, roboto, noto, arial, sans-serif;
        }
```

Using serif for headings and sans serif for body gives a clear delineation which
is which.
Of course, the converse is true.
Sans serif for headings and serif for body
gives similar effect.
It's just a matter of personal preference.
At least, this point can be applied to the two languages I use, English and Filipino.

{{< btt >}}
### Link Management

Links in this site that have a northeast arrow ("↗" or "`\2197`" in CSS) right after them are *external links*, i.e. links that take the visitor out of this website.
Note: In iOS and iPadOS, this arrow becomes an emoji version of it.

In CSS, I implented this using a selector that finds all links other than my own, which is `ohio.araw.xyz`.

Here is a sample CSS code block implementing that:

```css
a[href^="http://"]:not([href*="ohio.araw.xyz"]):after,
a[href^="https://"]:not([href*="ohio.araw.xyz"]):after{
        content: "\2917"; 
        color: green;
        display: inline-block;
}
```

The above snippet means that if a link does not contain `ohio.araw.xyz`, then `content` will be displayed `after` it.

Currently, these arrows only indicate external links to let visitors know that they will be directed away.
Clicking one does **_not_** open it in a new tab or window.
You have to manually right-click it and select `Open in a new tab` (or `...window`) (or click with Mouse3/MouseWheel).


{{< btt >}}
### No JavaScript?

It's not really that I find JS harmful, although some would argue that it could be.
I don't even know enough of the language to make that claim.

So why this "distaste" for JS in websites?

Given the simple layout, the interactions with the visitor are limited to clicking links, which my site can practically do without JavaScript.
It's absence is definitely beneficial, because there's less code to maintain.
Eliminating the excess, even in the form of code, does leave a positive impact via negativa.

{{< btt >}}
### No Ads
Only advertisers like ads[^ads].
I don't intend on monetizing this site with ads, 
so expect a clean (read: boring) experience.

Also, did you know that a lot of online advertising you see depends on JS?

{{< btt >}}
### Images

Humans can be very visual *sometimes*.
In the internet, however, we must play it differently.

Big image size takes time to load, and will of course need more resources to serve it to the visitor.
More resources mean more energy consumed means larger carbon footprint.

When adding images to a site, I make sure that:
- it *does* tell "more than a thousand words."
An image must add to the narrative, not distract the viewers away from it.
If it it's not adding value content-wise, it's likely not going in.
- it's compressed as much as possible, to reduce its size, minimizing the time it takes to load.
There are several tools you can use to do this.
[Tiny JPG](https://tinyjpg.com) is an online image compression tool, in which you can upload up to 20 image files, max 5MB each.

Nowadays, I  tend to use [imgp](https://github.com/jarun/imgp)[^imgp], a "high-performance cli batch image resizer and rotator," that I can use offline. 

From the command line, I do something like:

```shell
imgp -x 1366x0 --quality=85 -pew ~/image.jpg
```

- `-x` is output resolution in HRESxVRES (horizontal and vertical resolution respectively).
Here, I set HRES = 1366, and VRES will adapt to maintain the ratio.
- `--quality` is the quality factor.
Here, I set it to 85.
- `-pew` combines three options: optimize, erase EXIF metadata[^metadata], and overwrite source images respectively.

{{< btt >}}
## Back-end

I use [Hugo](https://gohugo.io) static site generator to build this site.
There are many other big names out there, like Jekyll, Gatsby, Pelican, and Hexo, but I have no experience using them.

{{< btt >}}
### In the name of Static Site Generator (SSG)

Using SSG like Hugo arguably increases security by simplifying a lot of things[^pandoc].
There is no server-side software to install, no database to keep up to date, and no PHP plugins to upgrade.

[^pandoc]: Or, if you have [Pandoc](https://pandoc.org/) in your computer (installation is easy), you can convert Markdown to HTML, and use those in your site.
It takes some fiddling around the documentation, but it can be done.

In many SSGs, content is written in Markdown, a simple markup "language" for creating formatted text using a plaintext editor.
Markdown files (`.md`) are lightweight, portable, easy to backup, and transfer between computers.

Generation time depends on the size and volume of files that need to be compiled.
I've heard that some SSGs could take up to a minute to build one whole site;
some only *milliseconds*.

It *is* tedious to go through all that.
Unlike what-you-see-is-what-you-get (WYSIWYG) CMS like Wordpress in which you can easily post a new blog, with SSGs, you will have to, at least, type your post offline, compile, and then push to your web host.

But I'll take the massive freedom gains provided by SSGs[^SSG] anytime!

{{< btt >}}
### Using Hugo

Great Hugo tutorials abound online, in blog posts and video formats.
Some target new users;
some have specific use cases in mind.

However, like most tutorials online, they get outdated quickly.
Sooner or later, reading the official documentation becomes necessary,
as one can safely assume that it's updated.

As with everything else, it's important to be patient and willing to read the manual.
In case you're stuck, you can also ask the community. 
Hugo has both decent [community](https://discourse.gohugo.io) and [documentation](https://gohugo.io/documentation)[^hugo-doc].

Honestly, Hugo's learning curve is steep, especially if you're like me with no "real" coding experience.
But if you have the patience to read, learn, and ask for help, Hugo, as well as other SSGs, might just be the right magic for you.

My process involves a lot of trial and error to get this site looking the way it is now, simple as it is.

Having said all that, I'm still looking out for a "simpler" tool, the SSG that fits just right for my use case.
After all, a tool is a tool.

{{< btt >}}
### Disabling Internal Templates

Hugo ships with internal templates that I have disabled
because they have serious privacy issues,
will add unnecessary bloat to the site,
and I don't have any use for them. They are:
- Google Analytics;
- Disqus comments;
- Instagram cards;
- Twitter cards;
- YouTube; and
- Vimeo

To have a privacy-centered configuration, I followed [this documentation](https://gohugo.io/about/hugo-and-gdpr/) and [disabled all services](https://gohugo.io/about/hugo-and-gdpr/#disable-all-services).

{{< btt >}}
### nginx

[nginx](https://nginx.org/en/) ("engine X"), is an HTTP and reverse proxy server.
To meet defensive security standards,
I have the snippet in my server configuration:

```shell
server {
        server_name ohio.araw.xyz ;
        root /var/www/ohio.araw.xyz ;
        index index.html index.htm index.nginx-debian.html ;
        add_header Content-Security-Policy "default-src 'self';" always;
        add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;
        add_header X-Frame-Options "SAMEORIGIN";
        add_header X-XSS-Protection 1;
        add_header X-Content-Type-Options nosniff;
        location / {
                try_files $uri $uri/ =404 ;
        }
}
```

With this,
my site scores `A+` in [Mozilla Observatory](https://observatory.mozilla.org/).

{{< btt >}}
## Inspiration

In high school, computer lab was not my favorite, and I'm okay with that.

One of our lab works was to create our own (offline) website.
It had to be interesting, catchy.
That's why many of my classmates had `<marquee>` and `<blink>` tags in their works.

I don't remember how mine looked, but I'm sure it's basic,
with broken links hither and thither.

More than a decade later, here I am, building one again.
Only this time, I have more enthusiasm.
At least I've retained the important bits on how HTML works,
so I'm not starting from zero.

I'd like to say that I dedicate this to my former self, who couldn't seem to grasp the importance of web design.
As we rely on the internet for improving our collective knowledge,
web designers and developers *must see to it* that everyone can access information, in spite of the current tech they have.

Here are some other sites from which I also got inspiration:

- LOW←TECH MAGAZINE, the [solar-powered one](https://solar.lowtechmagazine.com). Their article on [how to build a low-tech website](https://solar.lowtechmagazine.com/2018/09/how-to-build-a-lowtech-website.html) is eye-opening.
- [1MB Club](https://1mb.club), and it's contemporaries, [512KB Club](https://512kb.club), [250KB Club](https://250kb.club), and even [10KB Club](https://10kbclub.com)
- The "[Best Motherfucking Website](https://bestmotherfucking.website)"
- [Dan Luu's website](https://danluu.com), although it begs a few design tweaks to improve readability.
- And other small, obscure personal blogs in the "smol net" and "dork web" that we have yet to discover.

{{< btt >}}

[^ads]: That's just a wild claim.
I have no proof of it *yet*, but absence of evidence doesn't mean evidence of absence, *no*?
Maybe the creatives who are coerced into doing the visuals also like their work.
[^imgp]: It's available in many Unix-like systems, including Linux distros, and macOS.
Visit their page for more info.
[^metadata]: Exchangeable image file format (EXIF) metadata is removed to help  reduce the image size.
As an added bonus, it's scrubs the image of details that might divulge unnecessary information to internet strangers when they inspect it, such as data, time, and location the image is created.
[^SSG]: Check out [Jamstack](https://jamstack.org/generators/) for a list of hundreds of possible SSGs!
[^hugo-doc]: By "decent" I mean it covers all the basic needs to help you set up a working site.
In its current state, it's reliable.
However, the more complex you make your site, you'll find that Hugo documentation still needs more polishing.
