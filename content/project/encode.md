---
title: "Encoding: From Hardcopy to Softcopy"
date: 2021-01-18T16:48:23+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "encoding", "hardcopy to softcopy"]
draft: false
---
## Status: On-going {.statusOnGoing}

One day, I decided to help Isya on encoding a lot of documents from a family friend, Tito Jorge.

Here is an attempt to document the entire process.

## Scope of Work

The documents that we're talking about here are printed articles written by Tito Jorge.
He's quite the writer, so each article easily goes above 4,000 words.

We are tasked to convert these printed materials into a Word document (docx) as softcopies.

The initial suggestion was to manually typewrite *everything*.
Surely, though, there must be a smarter way to make softcopies?

## Scanning of Documents

Currently, we have no scanner in our home.

Instead, I used the Adobe Scan app on the iPhone that I still had.
It's fine.
I just had to make sure that the text in each scanned page was readable.

The scanned files are in PDF format.

Then, I AirDropped the scanned files to Isya's MacBook, because that's where I would be working on them.
AirDrop is limited to Apple devices;
it's Apple's fancy way of transferring files over bluetooth.
The magic lies in how incredibly fast the transfer time is, even in large batches of files.

Of course, one doesn't need Apple devices to do these.
Just remember that the important things here are:
- a way to scan the documents; and 
- a way to transfer them to the computer.

## Converting PDF to docx

It's time to make use of free online software.
We'll be needing Optical Character Recognition (OCR) software for this one, particularly one that can convert PDF to docx.

I used [Free Online OCR](https://www.onlineocr.net), simply because it's the topmost item in the search list.
What I will discuss next is based on that platform.
You can choose other websites, but you'll have to figure it out yourself.

On the Free Online OCR landing page, you can do a quick task of converting PDF to docx.
However, you'll soon find out that this will only output the first page of the document.
The max file size is also limited to 15 MB.

To increase these numbers, you need to sign up.

### Sign up on Free Online OCR using disposable email

Never use your own personal email account.

There are many free online services that provide disposable emails.
For this, I used [Temp Mail](https://temp-mail.org) which "provides temporary, secure, anonymous, free, disposable email address."
Keep this tab (or window) open for as long you need this.

When you click SIGN UP on the upper right of the page, you will be prompted to fill up a form:

Enter username: `[enter any gibberish]`  
Enter password[^1]: `[enter any gibberish]`  
Confirm password: `[same as above]`  
Enter E-mail: `[Copy the email from Temp Mail]`  
Enter Captcha code: `[captcha code here*`  

And ~~blindly~~ accept the Terms of Service and Privacy Policy in the checkbox.

Log in once you've successfully signed up.

Logging in increases your wiggle room, namely:
- max file size is bumped up to 200 MB;
- max number of pages is now 50;
- plus some other options that you might find useful.

Once you deplete the number of available pages, which you will if you're working on a lot academic articles, just create another account, with the help of Temp Mail!

When creating another account, be sure to delete the cookies in your browser.

Don't forget to download all the docx files.

## Polish the documents 

At this point, all the files are now in docx format.
The OCR converter will have tried its best in recognizing the text, tables, and even images.
The quality of the converted docx will greatly depend on the scanning process, but even then, the final output won't be perfect.

Open your favorite word processor.
I used Microsoft Word in the MacBook.

This is the most labor-intensive part of the whole process which includes these things to do:
- check the spelling;
- check the punctuation marks;
- check the formatting;
- recreate the data tables, if need be;
- rescan and include any important images;

I have processed about 133 pages of scholarly articles, done in about 13 hours (non-continuous).

## Recommendation/s

To future-proof the articles, it would be nice to convert them also to plaintext (txt). 
Plaintext ensures that it can be ported to other computers and platforms, while eating as little memory space as possible.

Plaintext can be formatted with Markdown.
[Pandoc](https://pandoc.org) is a universal converter, and free software at that, that can be used to covnert txt (or markdown) to, say, docx.

If you're the kind who handwrites on their journal, you may want to keep a digital backup of your personal musings by implementing what I discussed above.
Take note (ha!) of the legibility of your handwriting;
the OCR might not recognize your cursive penmanship!

Or perhaps, you own a distraction-free, old-but-working-still typewriter?
Type your thoughts in a distraction-free machine[^2], scan, and edit and/or finalize the digital copy.

[^1]: To easily come up with a password, this would be the best time to start using a [password manager](https://privacytools.io/software/passwords/#pw).
Most of the password managers have randomizers, which prints out random strings of alphanumeric characters, that you can simply copy and paste.
[^2]: See the [Typewriter Manifesto](https://typewriterrevolution.com/manifesto) if you're into that.
