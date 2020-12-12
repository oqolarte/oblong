---
title: "This Site"
date: 2020-11-27T14:42:32+08:00
draft: false
---
**Status: On-going**

This site is itself a personal project, a documentation of other projects that I log here. 
If we are to use modern internet terms, this is also a wiki.

## Digital Garden

If you've been looking around for personal websites like I have, "digital garden" is a phrase that gets used often.

It is where webmasters carefully plant the seeds of ideas, and hope to grow them sustainably.
It's a more endearing term, I believe, than, say, a public-facing journal or simply blog.
They all function the same.

This site, then, is my digital garden.
Expect that things will be corrected, deleted, edited, fed, *grown*, depending on any number of factors, including the current state of things.
People change (they need to, lest they stagnate), and and every fiber of their being changes with them, literally.

### Public Repository of Independent Research

Speaking of ideas, I will use this site as a publishing platform of the results of my research, if any at all. 
I am going the more "progressive" route of bypassing the traditional way to PhD.
After reading [Nadia Eghbal](https://nadiaeghbal.com)'s post, "[Reimagining the PhD](https://nadiaeghbal.com/phd)," I'm now more inclined to do this.

I can't also imagine spending at least three years getting a master's degree, holding on to the fact that it's "necessary" to further my career.
I am, more or less, happy with the opportunity cost of not dealing with it.

Instead of going through the application process for post-graduate studies, may I now enlist you, Dear Public, as my peer reviewer?
I hope you don't mind.
I dislike receiving rejection emails from The Only University I applied for one year ago.
At least, through this site, I (hopefully) wouldn't be receiving (unsolicited) rejection letters from anyone.

Finally, having the public as my peer reviewer, I think, opens interesting avenues for the stakeholders (me and the public).
There will always be people smarter than me.
Hopefully, I can pull some of their attention here to share their insights someday.

In this online space, let's assume that nothing is set to stone.
Through editing, I'm able to improve a body of content.
I can learn by doing, and sharing the entire process with you as I go.

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

The RSS feed, which tracks only the Log (which, as mentioned, tracks all the changes), is a whole separate thing.
I don't consider it a section of this site.
It's only a link that you can copy and paste on your favorite RSS reader.

## Front-end

As you are well aware, this site has a very simple design.
Admittedly, it's the result of having only a working knowledge of HTML and CSS, and none of JavaScript.
It turns out that this is a feature, not a bug.

By foregoing intricate UI/UX design, I can focus on what matters most: *content*. 
Let me explain.

By simplifying the design, I'm making this site less bloated.
This means that:
- low-end and/or old computers with slow and/or outdated software can visit with little to no hassle on their end;
- locations with poor internet connectivity can still browse the content;
- I can also improve this site's accessibility by improving layout, among many other things;
- the site loads fast because of no tracking, no custom fonts; and,
- no distractions.

### No JavaScript?

{{< figure src="/image/nojs.png" alt="screenshot from estimator dot dev evaluating this site as no javascript detected" caption="Look, ma! No JS, according to estimator.dev!" >}}

It's not really that I find JS harmful, although some would argue that it is.
In fact, I don't know enough to make that claim.
Besides, nothing in the internet is perfectly safe.

So why this "distaste" for JS-less website?

Mainly it's because I don't know enough of it (yet) to even consider baking it into the site.
If it's something that I don't know how to fully utilize, then it's bloat to me.
Also, given the simple layout, my site can practically do without it.
It's absence is definitely beneficial, because there's less code to maintain.

### No Ads
Only marketers like ads. 
Good thing that I have none of them here.
And I don't intend to put them here anytime soon.

Also, did you know that a lot of online advertising you see depends on JS?

### Images

Humans can be very visual sometimes.
In the internet, however, we must play it differently.

Big image size takes time to load, and will of course need more resources to serve it to the visitor.

When adding images to a site, I make sure that:
- it *does* tell "more than a thousand words."
An image must add to the narrative, not distract the viewers away from it.
If it it's not adding value content-wise, it's not going in.
- it's compressed as much as possible, to reduce its size, minimizing the time it takes to load.
There are several tools you can use to do this.
[Tiny JPG](https://tinyjpg.com) is an online image compression tool, in which you can upload up to 20 image files, max 5MB each.
Personally, I use [ImageMagick](https://imagemagick.org/), which is a free image manipulation tool that I can access in my command line. 
It's available in many platforms including Linux, Windows, macOS, iOS, Android, etc.

## Back-end

I use [Hugo](https://gohugo.io), a static site generator to build this site.
There are many other big names out there, like Jekyll, Gatsby, Pelican, and Hexo, but I have no experience using them.
I have no particular reason why I chose Hugo, except maybe that it's written in Go.
And some experts say that most software developed using a compiled language (which Go is) can be "blazing fast."

Web developers who may be reading this will notice that Hugo is the extent of my back-end knowledge. 
That may or may not put off some of you.

### Using Hugo

There are a lot of tutorials online on how to start a blog using Hugo.
A lot of them, if you follow to the letter, will set you up a nice content management system (CMS, a fancier term for blog).
But many of these tutorials are naturally targetted to beginners who just want to get something up already, and not go through hours of laboriously reading through the documentation.

What if you want something that isn't pre-fabricated, some template that can't be found in the [Themes](https://themes.gohugo.io), a theme that speaks your personality?

Well, that's when you need to read the docs.

Truth be told, Hugo's learning curve is steep, especially if you're like me with no "real" coding experience.
Maybe it helps when you've been dealing with software programming for a while.
Your mileage may vary.
My process involves a lot of trial and error to get this site looking the way it is now, simple as it is.

### Disabling Internal Templates

Hugo ships with internal templates that I have disabled because they either violate privacy, will add unnecessary bloat to the site, or both. They are:
- Google Analytics;
- Disqus comments, a popular commenting system;
- Instagram cards;
- Twitter cards;
- YouTube;
- Vimeo;

To have a privacy-centered configuration, I followed [this documentation](https://gohugo.io/about/hugo-and-gdpr/) and [disabled all services](https://gohugo.io/about/hugo-and-gdpr/#disable-all-services).

## Inspiration

Back in high school, I'm not the brightest pupil in our computer lab, and I'm okay with that.
One of our "lab works" was to create our own website.
I don't remember how mine looked, but I'm sure it's basic, with broken links hither and thither.

More than a decade later, here I am, building one again.
At least I retained the important bits on how HTML works, so I'm not starting from zero.

I'd like to say that I dedicate this to my former self, who couldn't seem to grasp the importance of web design.
Even today, I can only rely on Hugo, a working knowledge in HTML and CSS, and a little bit of patience to set everything up.

Here are some other sites from which I got inspiration:
- Low-tech Magazine, the [solar-powered one](https://solar.lowtechmagazine.com). Their article on [how to build a low-tech website](https://solar.lowtechmagazine.com/2018/09/how-to-build-a-lowtech-website.html) is eye-opening.
- [1MB Club](https://1mb.club), and it's contemporaries, [512KB Club](https://512kb.club), and [250KB Club](https://250kb.club)
- The "[Best Motherfucking Website](https://bestmotherfucking.website)"

## To-Do

Here's a wishlist of sorts that I need to do for this site:
- [ ] Move away from GitHub Pages and host somewhere else  
- [ ] Have TLS certificate, preferably from [Let's Encrypt](https://letsencrypt.org), because there's really no excuse to use just HTTP
- [ ] Get at least a score of 50 on Mozilla's [HTTP Observatory](https://observatory.mozilla.org/)
