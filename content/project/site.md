---
title: "Site Construction"
date: 2020-11-27T14:42:32+08:00
keywords: ["web development", "web design", "sustainable web design", "simple web design", "full stack web development", "full stack web design", "sustainable full stack web development"]
draft: false
---
{{< ongoing >}}

This site is itself a project.

Here you'll find the details in my design process
in which I often choose simple solutions.

{{< toc >}}

## Digital Garden

Like a real garden,
a digital garden is where the gardener plant the seeds of ideas,
and hope to grow them.
It becomes both the medium and the message of the self.
For some it's a blog;
for others it's their own personal wiki.

This site, then, is my [digital garden](/wiki).
Expect that things will be corrected, deleted, edited, fed, *grown*.
Like a real garden, tending this one relaxes me.
It helps me reorganize my thoughts by weeding out what's unnecessary.

{{< btt >}}

### Public Repository of Independent Research

This site will also have my research material, if any at all.
Research, in this context, will be different from that in academia.
This bypasses the usual way to earn a post-graduate degree.
After reading Nadia Asparouhova's post, "[Reimagining the PhD](https://nadia.xyz/phd)," I'm now more inclined to do this.
As a result, I won't get a certification nor a degree; it won't be official.
But what are certifications anyway if not,
for better or worse,
a glorified piece of paper?

I can't also imagine spending a few more years in grad school.
I am, more or less, happy with the opportunity cost of not dealing with it.

Instead, I enlist you, Dear Reader, as my peer reviewer.
I hope you don't mind.

I think this opens interesting avenues for the stakeholders (me and the public).
There will always be people smarter than me;
hopefully, I can pull some of their attention here to share their insights someday.

{{< btt >}}

### Major Sections

This site is divided into two main sections: **Log** and **Projects**.

Each post in the *Log* will start with a list the significant revisions in the Site.
After that, I'll try to add some personal updates as well.

In *Projects*, I list the thing/s I'm currently doing on the side.
Each one begins with Table of Contents (ToC), so readers can skim the topics.
The write-ups will be a healthy blend of creative and technical writing,
to prevent you from getting bored, something I won't afford to do in a formal setting.
Of course, I'll include citations properly.

There's RSS (RDF [Resource Description Framework] Site Summary,
or Really Simple Syndication), a web feed,
which readers can subscribe to get updated.
For that, one needs RSS reader.
Alternatively, some email clients like Thunderbird, Microsoft Outlook, and Apple
Mail, have their own built-in RSS reader.
You can use any of those too.
A web service is available along these lines: check out [RSS by email](https://rssby.email).
Or if you're a more technical person,
check out [rss2email](https://pypi.org/project/rss2email/),
a software that can forward your RSS feeds to your email.

{{< btt >}}

## Design choices

I borrow design principles from brutalism for this site. Admittedly,
it's the result of having only a working knowledge of HTML and CSS, and
virtually none of JavaScript. This "limitation" becomes a feature for
static websites like this one.

(For a complete breakdown of HTML and CSS, one can always inspect the
page source. Accessing it differs from browser to browser.)

By foregoing intricate [UI/UX design](/ui-ux), I can focus on what
matters most: *content*.

Through simplicity, I'm making this site less bloated.
This means that:

- low-end and/or [old computers](/old-computer) with slow and/or
  outdated software can visit with little to no hassle on their end;
- locations with poor internet connectivity can still browse the
  content;
- improving accessibility is easier;
- the site loads fast because of [no ads](/no-ads), no tracking, no custom fonts; and,
- no distractions.

I consider these points important as they all relate to my current situation.
In fact, websites should be guided by these principles.

And because of these, this site scores
[100/100 according to Yellow Lab Tools](https://yellowlab.tools/result/h4kknty483).

{{< btt >}}

### Typography

Typography, no doubt, elevates the text.
What I have set here, though, gets the job done,
i.e., serve readable content.

There are many ways to do that without compromising the overall
experience of readers.

I use *your* system's default font stack so your computer wouldn't
need to look elsewhere to render the fonts.

I use serif for headings. This is the font stack that I use:

- Iowan Old Style
- Apple Garamond
- Times

And I use sans serif for body and the rest of the page.
This is what I use:

- Helvetica
- Cantarell
- Ubuntu
- Roboto
- Noto

Using serif for headings and sans serif for body gives a clear delineation
which piece of info is which.

{{< btt >}}

### Light and Dark themes

Earlier iteration of this site defaults to dark mode, giving visitors no
option to change to light mode.

A good design provides option for both.

Now, current theme will depend on what you have set for your
device/browser.

I'm no expert in color theory, so I had help from online color palette
generators to see which colors work well.
[Coolors](https://coolors.co/) is good tool on this.

Another thing to check for is color contrast. Readability of text
depends on how large the font AND what colors are mixed together. After
choosing your color palettes (ideally for both light and dark themes),
make sure that colors for fonts (for both main and for links) can be
seen on your preferred background color.
[WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/)
is the tool I
used for this. To **Pass** all tests, slide the "Lightness" bar until
the contrast ratio is at least 7:1.

Again, please check the page source to view the complete breakdown of
CSS.

{{< btt >}}

### Link Management

Links that have an arrow ("↗" or "`\2197`" in CSS) right after them are
*external links*, i.e., links that take the visitor out of this website.

In CSS, I implented this using a selector that finds all links other than my own, which is `ohio.araw.xyz`.

Here is a sample CSS code block implementing that:

```
a[href^="http://"]:not([href*="ohio.araw.xyz"]):after,
a[href^="https://"]:not([href*="ohio.araw.xyz"]):after{
        content: "\2917"; 
        display: inline-block;
}
```

The above snippet means that if a link does not contain `ohio.araw.xyz`, then `content` will be displayed `after` it.

Currently, these arrows only indicate external links to let visitors know that they will be directed away.
Clicking one does **_not_** open it in a new tab or window.
You have to manually right-click it and select `Open in a new tab` (or `...window`) (or click with Mouse3/MouseWheel).

{{< btt >}}

### JavaScript?

Given the simple layout, the interactions with the visitor are limited to
reading content and clicking links.
These can be achieved without JS.

A few pages with some math do contain JS, specifically
[MathJax](https://www.mathjax.org), to render the formulae beautifully.
But on mobile, it doesn't load properly. As of writing this, I'm still
looking for a workaround on that.

If you're neither a math nor JS enthusiast, it's a non-issue to have your
browser's JS disabled, but you'll likely see weird syntax where a math
formula should be.

{{< btt >}}

### Images

Most of humans naturally tend to be visual.
How does this translate well in a clean web design?

Big image size takes time to load, and will need more resources to serve
it to the visitor. More resources mean more energy consumed means larger
carbon footprint.

When adding an image to a post, I make sure that:

- it *does* tell "more than a thousand words." It must add value to the
  narrative, not distract the viewers from the main content.
- it's compressed as much as possible, to reduce its size, minimizing
  the time it takes to load. There are several tools you can use to do
  this. [Tiny JPG](https://tinyjpg.com) is an online image compression
  tool, in which you can upload up to 20 image files, max 5MB each.

Even with these points, adding an image is still a subjective decision.

I use [imgp](https://github.com/jarun/imgp), a "high-performance cli
batch image resizer and rotator," that I can use offline.

From the command line, I do something like:

```
imgp -x 1366x0 --quality=85 -ew --optimize ~/image.jpg
```

- `-x` is output resolution in HRESxVRES (horizontal and vertical resolution respectively).
Here, I set HRES = 1366, and VRES will adapt to maintain the ratio.
- `--quality` is the quality factor.
Here, I set it to 85%.
- `--optimize` does exactly that to the image.
- `-ew` combines two options: *erase* exchangeable image file format
  (EXIF) metadata, and *overwrite* source images respectively. Deleting
  EXIF metadata, which might include date, time, and/or location of
  creation, helps reduce the image size.

{{< btt >}}

### Comments section

There is no comment section in this site. It's both social and technical
burden on me to implement and moderate. But honestly, the tools out
there just don't meet my criteria.

One can still send their thoughts via this protocol called email, and
mine is always at the footer! Sending comments via email is old school,
but I feel like it promotes more thoughtful discussion rather than
needless debate. The "friction" of having to open one's email client
certainly makes one be deliberate about the message (or comment) they're
planning to send.

Also, if we know each other personally, feel free to message your
comments to me directly via Signal, assuming we already have each
other's contact details.

Kami explains it better on her blog "[Why Comment Sections Suck](https://kami.bearblog.dev/why-comment-sections-suck-rei-want-to-comment-on-your-blog-post/)."

{{< btt >}}

## Other important stuff

I have lumped together other technical stuff here that goes into serving
this site to the visitors.

{{< btt >}}

### On Static Site Generators (SSG) and Hugo

I use [Hugo](https://gohugo.io) static site generator to build this site.

Using SSG like Hugo arguably increases security by simplifying a lot of
things. There is no server-side software to install, no database to keep
up to date, and no PHP plugins to upgrade. It's also an elegant solution
for read-only blogs like this one.

In many SSGs, content is written in Markdown, a simple markup "language"
for creating formatted text using a plaintext editor. Markdown files
(`.md`) are lightweight, portable, easy to backup, and transfer between
computers.

Generation time depends on the size and volume of files that need to be
compiled. Some SSGs could take up to a minute to build one whole site;
some only *milliseconds*.

For many, it *can* be tedious to go through all that. Unlike in
what-you-see-is-what-you-get (WYSIWYG) content management systems (CMS)
like Wordpress in which you can easily post a new blog, with SSGs, you
will have to, at least, type your post offline, compile, and then push
to your web host.

But I'll take the massive freedom gains provided by SSGs anytime!
See Jamstack for their list of [Site Generators](https://jamstack.org/generators/) if you want to know more.

As for Hugo, tutorials abound online, in blog posts and video formats.
Some target new users; some have specific use cases in mind.

However, like most tutorials online, they get outdated quickly.
Sooner or later, reading the official documentation becomes necessary.

As with everything else, it's important to be patient and willing to
read the manual. In case you're stuck, you can also ask the community.
Hugo has both decent [community](https://discourse.gohugo.io) and
[documentation](https://gohugo.io/documentation).

I would say that Hugo's learning can be steep, especially if you're like
me with no "real" coding experience. But if you have the patience to
read, learn, and ask for help, Hugo, as well as other SSGs, might just
be the right magic for you.

My process involves a lot of trial and error to get this site looking
the way it is now, simple as it is.

{{< btt >}}

### Disabling Internal Templates

Hugo ships with internal templates that I have disabled
because they have serious privacy issues,
will add unnecessary bloat to the site,
and I don't have any use for them. They are:

- Google Analytics;
- Disqus comments;
- Instagram cards;
- Twitter (X) cards;
- YouTube; and
- Vimeo

To have a privacy-centered configuration, read on how to [Configure privacy](https://gohugo.io/configuration/privacy/#article).

{{< btt >}}

### Privacy

As far as I'm aware, this site:

- has no ad trackers and no ad-tech companies behind;
- has no third-party cookies;
- has no tracking that evades cookie blockers;
- has no session recording services;
- has no keystroke logger;
- has no Facebook Pixel;
- has no Google Analytics [and their "remarketing audiences" feature]

The above findings are according to [The Markup's Blacklight tool](https://themarkup.org/blacklight).

{{< btt >}}

### Hosting

[Vultr](https://www.vultr.com) currently hosts this site using their cheapest
VPS.
The VM runs on Debian 12 "Bookworm".

{{< btt >}}

### nginx

[nginx](https://nginx.org/en/) ("engine X"), is an HTTP and reverse proxy server.
To meet defensive security standards,
I have the snippet in my server configuration:

```
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

Computer laboratory was not my favorite back in high school. Not because
I hated [computers](/computer); how could I when I loved playing video
games in it? I was disinterested, I later realized,
because of [how it was taught](/pedagogy): rote memorization of the history of
computing, of its important hardware and software; forcing us to use
proprietary [operating system](/os) (Windows) and applications (mainly
Microsoft Office suite and Adobe Photoshop).

Anyway, one of our lab works was to create our own (offline) website. It had to
be interesting, catchy. Many of my classmates had `<marquee>`
and `<blink>` tags, and of course, GIFs in their works.

I don't remember how mine looked, but I'm sure it's basic,
with broken links hither and thither.

More than a decade later, here I am, building and maintaining one.
This time, I am enjoying the process.
At least, I have retained the important bits on how HTML works,
so I'm not starting from zero.

**I dedicate this site to my former self**, who couldn't seem to grasp
the importance of web design. As we rely on the [internet](/internet)
for improving our collective knowledge, web designers and developers
*must see to it* that everyone can access information, in spite of the
current tech they have.

Here are some other sites from which I also got inspiration:

- [LOW←TECH MAGAZINE](https://solar.lowtechmagazine.com). Their article on [how to build a low-tech website](https://solar.lowtechmagazine.com/2018/09/how-to-build-a-lowtech-website.html) is eye-opening.
- [1MB Club](https://1mb.club), and it's contemporaries, [512KB Club](https://512kb.club), [250KB Club](https://250kb.club).
- "[This is an Actual Website](https://actualwebsite.org/)"
- [Dan Luu's website](https://danluu.com), although it begs a few design tweaks to improve readability.
- [Brutalist Web Design](https://brutalist-web.design/)
- And other small, obscure personal blogs in the "smol net" and "dork web" that we have yet to discover.

{{< btt >}}
