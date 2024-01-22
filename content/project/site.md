---
title: "About This Site"
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

This site, then, is my digital garden.
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
## Front-end

I borrow design principles from brutalism for this site. Admittedly,
it's the result of having only a working knowledge of HTML and CSS, and
virtually none of JavaScript. It turns out that this is a feature, not a
bug, for static websites anyway.

By foregoing intricate UI/UX design, I can focus on what matters most: *content*.

Through simplicity, I'm making this site less bloated.
This means that:
- low-end and/or old computers with slow and/or outdated software can visit with little to no hassle on their end;
- locations with poor internet connectivity can still browse the content;
- improving accessibility is easier;
- the site loads fast because of no tracking, no custom fonts; and,
- no distractions.

I consider these points important as they all relate to my current situation.
In fact, websites should be guided by these principles.

And because of these, this site scores
[100/100 according to Yellow Lab Tools](https://yellowlab.tools/result/gs32wi1508).

{{< btt >}}
### Typography

Some would say typography should elevate the content.
What I have set here gets the job done,
i.e., serve readable content.

There are many ways to do that without compromising the overall experience of readers.

I use *your* system's default font stack so your computer wouldn't
need to look elsewhere to render the fonts.

I use serif for headings. This is the font stack that I use:

- Iowan Old Style
- Apple Garamond
- Baskerville
- Times New Roman
- Droid Serif
- Times
- Source Serif Pro
- Apple Color Emoji
- Segoe UI Emoji
- Segoe UI Symbol

And I use sans serif for body and the rest of the page.
This is what I have in my CSS:

- -apple-system
- BlinkMacSystemFont
- Avenir Next
- Avenir
- Segoe UI
- Helvetica Neue
- Helvetica
- Cantarell
- Ubuntu
- Roboto
- Noto
- Arial

Using serif for headings and sans serif for body gives a clear delineation
which piece of info is which.

{{< btt >}}

### Default is Dark

I personally like dark mode on my screens
because it's less straining to the eyes,
especially in low-light environment.

It's also said to prolong the device's battery's charge.
In theory, it's because the screen emits less photons (light) for using darker colors,
therefore using less energy.
In practice,
it can be difficult to gauge.

{{< btt >}}

### Link Management

Links that have an arrow ("↗" or "`\2197`" in CSS) right after them are *external links*,
i.e., links that take the visitor out of this website.

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

Given the simple layout, the interactions with the visitor are limited to
reading content and clicking links.
These can be achieved without JS.

There's also less code to maintain, so that's a bonus, too!

{{< btt >}}
### No Ads

Only marketers like ads.
I don't intend on monetizing this site with ads.

Also, did you know that a lot of online advertising you see depends on JS?

{{< btt >}}
### Images

Humans naturally tend to be visual.
How does this translate well in a clean web design?

Big image size takes time to load, and will need more resources to serve it to the visitor.
More resources mean more energy consumed means larger carbon footprint.

When adding an image to a post, I make sure that:
- it *does* tell "more than a thousand words."
It must add value to the narrative,
not distract the viewers from the main content.
- it's compressed as much as possible, to reduce its size, minimizing the time it takes to load.
There are several tools you can use to do this.
[Tiny JPG](https://tinyjpg.com) is an online image compression tool, in which you can upload up to 20 image files, max 5MB each.

Even with these points, adding an image is still a subjective decision.

I use [imgp](https://github.com/jarun/imgp), a "high-performance cli batch image resizer and rotator," that I can use offline. 

From the command line, I do something like:

```shell
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

### Comment section

There is no comment section in this site. It's both social and technical
burden on me to implement and moderate. But honestly, the tools out
there just don't meet my criteria.

One can still send their thoughts via this protocol called email, and
mine is always at the footer! Sending comments via email is
old school, but I feel like it promotes more thoughtful discussion
rather than needless debate. The "friction" of having to open one's
email client certainly makes one be deliberate about the message they're
planning to send.

{{< btt >}}
## Back-end

I use [Hugo](https://gohugo.io) static site generator to build this site.

{{< btt >}}
### On Static Site Generators (SSG)

Using SSG like Hugo arguably increases security by simplifying a lot of
things. There is no server-side software to install, no database to keep
up to date, and no PHP plugins to upgrade. It's also an elegant solution
for read-only blogs like this one.

In many SSGs, content is written in Markdown, a simple markup "language"
for creating formatted text using a plaintext editor. Markdown files
(`.md`) are lightweight, portable, easy to backup, and transfer between
computers.

[Pandoc](https://pandoc.org/) can also be used to generate HTML pages
for a website. It's easy to install. You can convert Markdown to HTML,
and use those in your site. (Note: Pandoc is
a "universal document converter," it offers many uses outside of HTML
generation, such as converting `.docx` to `.pdf`.)

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

{{< btt >}}
### Using Hugo

Great Hugo tutorials abound online, in blog posts and video formats.
Some target new users;
some have specific use cases in mind.

However, like most tutorials online, they get outdated quickly.
Sooner or later, reading the official documentation becomes necessary.

As with everything else, it's important to be patient and willing to read the manual.
In case you're stuck, you can also ask the community.
Hugo has both decent [community](https://discourse.gohugo.io) and [documentation](https://gohugo.io/documentation).

Honestly, Hugo's learning curve is steep, especially if you're like me with no "real" coding experience.
But if you have the patience to read, learn, and ask for help, Hugo, as well as other SSGs, might just be the right magic for you.

My process involves a lot of trial and error to get this site looking the way it is now, simple as it is.

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

To have a privacy-centered configuration,
learn more about [Hugo and the General Data Protection Regulation](https://gohugo.io/about/hugo-and-gdpr/)
to [disable all services](https://gohugo.io/about/hugo-and-gdpr/#disable-all-services).

{{< btt >}}
### Privacy

As far as I'm aware,
this site:
- has no ad trackers
- has no third-party cookies;
- has no tracking that evades cookie blockers;
- has no session recording services;
- has no keystroke logger;
- has no Facebook Pixel;

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

Computer laboratory was not my favorite back in high school.
One of our lab works was to create our own (offline) website.
It had to be interesting, catchy.
That's why many of my classmates had `<marquee>` and `<blink>` tags in their works.

I don't remember how mine looked, but I'm sure it's basic,
with broken links hither and thither.

More than a decade later, here I am, building one again.
This time, I'm building this site because I enjoy doing it for myself.
At least, I've retained the important bits on how HTML works,
so I'm not starting from zero.

I'd like to say that I dedicate this to my former self, who couldn't seem to grasp the importance of web design.
As we rely on the internet for improving our collective knowledge,
web designers and developers *must see to it* that everyone can access information, in spite of the current tech they have.

Here are some other sites from which I also got inspiration:

- LOW←TECH MAGAZINE, the [solar-powered one](https://solar.lowtechmagazine.com). Their article on [how to build a low-tech website](https://solar.lowtechmagazine.com/2018/09/how-to-build-a-lowtech-website.html) is eye-opening.
- [1MB Club](https://1mb.club), and it's contemporaries, [512KB Club](https://512kb.club), [250KB Club](https://250kb.club).
- The "[Best Motherfucking Website](https://bestmotherfucking.website)"
- [Dan Luu's website](https://danluu.com), although it begs a few design tweaks to improve readability.
- And other small, obscure personal blogs in the "smol net" and "dork web" that we have yet to discover.

{{< btt >}}

[^metadata]: 
