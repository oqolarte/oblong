---
title: "Always Carry Website"
date: 2021-01-02T15:02:49+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "static site", "static e-commerce site", "online bookshop"]
draft: false
---
## Status: On-going {.statusOnGoing}

My partner asked me to come up with a website to act as a central hub for their small online shop.
The website shall mirror the contents of the shop's other social media presence.

Visit the site:
**[Always Carry!](https://alwayscarry.netlify.app)**

{{< figure src="/image/alwayscarry.png" alt="screenshot from Always Carry website " caption="Screenshot from the website" >}}

## Design Choices

I figured that since this would just be a small online shop, a full-blown e-commerce site with lots of features is unnecessary.
Having this in mind, I decided that a static site would do for now.
Since I'm already familiar with [Hugo](https://gohugo.io), I use it as my static site generator.

The business is literally just starting out.
One major decision is to use free software services for the time being.

Of course, we intend to scale as business grows.

### Landing Page

The cat-holding-a-book logo is drawn by Isya herself, using Wacom Bamboo Tablet on [Krita](https://krita.org), a free and open source painting program.
It shall be the guiding aesthetic of the website.

From the Index, the visitor is presented with two links to the two branches of the shop:
- Books
- Home Products

Each of these are Lists of single pages.
Each single page is a detailed view of the product via Instagram.

### Integration with Instagram

To reach as many people as possible, the shop is also available in Instagram and Facebook.
Huge chunk of content management will be focused on IG.
Each post will then appear on the Facebook Page, and on the website.

I had a brilliant idea to use Hugo's native integration with Instagram through their API, according to [Hugo's documentation](https://gohugo.io/content-management/shortcodes/#instagram).
The first try, though, it already failed.

It turns out, the Instagram shortcode is deprecated since 24 Oct 2020, [according to this discussion.](https://github.com/gohugoio/hugo/issues/7879) 

Good thing that from that same discussion, [monsieurnebo's fix](https://github.com/gohugoio/hugo/issues/7879#issuecomment-737149676) (based on ToniTornado, but with a bit smaller code) got it going for me.

For the time being, I can use the IG photo's ID to be embedded on the site.

### Payment Gateway?

It's only natural for an e-commerce site to have a payment method coded in it.
However, right now, it has no integrated payment gateways like PayPal, Stripe, or others, in the site.

Payment will be made in "less convenient" ways, by employing other known services like GCash, PayMaya, and the traditional Bank Transfer.
In my opinion, these methods, particularly the first two, will reach more people since neither need debit nor credit card to make transactions, only a phone that's connected to a GCash account.

Google Forms is also used for the customers to fill up when placing their orders.

For now, this will have to do.

### Hosting: GitHub + Netlify

The source files are on [our GitHub](https://github.com/arawseekers). The HTML files are then deployed to [Netlify](https://netlify.com), another hosting platform.

I make the changes locally, in a laptop.
These changes are then committed and pushed to the GitHub repository.
Finally, I have set up Netlify to detect the changes from the repository, and the site is deployed for public viewing.

### "Just-in-time" Preloading

Improving user experience might just be the key to a successful small online shop.
Who knows?

[Instant.Page](https://instant.page) claims to make the site's pages instant by preloading a page right before a user clicks it.
Bandwidth-wise, this should only have small effects on the user, since by design, the pages of **Always Carry** are already lightweight.

According to the Instant.Page, uBlock Origin blocks it.
The author explains how to [self-host the script](https://instant.page/tech#self-hosting), and so I did just that, because I use uBlock Origin.

## How A Transaction Looks Like

Here, I outline the processes involved for the customer and the dealer.
This is not final as we streamline further.

### Customer Side

1. Customer browses the book list, and makes a selection.
2. Customer fills up the Form, giving us the needed details of the order.
3. Customer waits for the invoice.
Ideally, it arrives within 24 hours.
When the invoice is confirmed to have been received, this informs the customer that their order is reserved under their name for the next 24 hours.
4. Customer pays within 24 hours of receiving the invoice.
Otherwise, the reservation is revoked, and the order is made available again for the public.
5. Once payment is verified, the order will be packed and sent.
Customer's waiting duration depends on the delivery option they chose in the Form.
6. Customer tracks the package until they receive it.
7. Customer receives the package, and the transaction is complete.

### Dealer Side (*we*, the sellers)

1. We check the Google Form at least once a day for any orders made.
We also check our other inboxes (Facebook, Instagram, and Gmail) for any inquiries people might have for us.
2. We will process orders in a first-come-first-serve basis.
This means that an order will be given to the next one in line if the one before failed to pay within 24 hours.
3. We send the invoice to the customer.
This will also let them know that the order is reserved under their name for the next 24 hours.
4. If payment is made, we will start packing. 
Else, as mentioned, it is made available again, or is given to the next customer who intended to order it.
5. After packing, the package is sent via the chosen courier.
The number of waiting days depends on customer's location.
6. We track the package and give updates to the customer until they receive it.
7. When the customer receives the package, the transaction is complete.

## 'Dropping' Content

In e-commerce jargon, "dropping" means putting up new items in the shop.

The current way involves a lot of friction on our side, to be honest.
This is one of the drawbacks of going static: doing things "manually."

Let's enumerate the steps:

1. The files, mainly photos of books to be sold, live in the laptop---a MacBook, and are backed up in a OneDrive account.
The phone can then access the photos via the cloud.
2. Alternatively, to save on bandwidth, we can transfer over a USB connection, using [Android File Transfer](https://www.android.com/filetransfer/) as the needed middleman.
The operative word is "needed," because one cannot *just* plug an Android phone into a Mac and be done with it.
2. On the phone, images will be uploaded on Instagram.
Since the IG account is already linked to the FB Page, each post shall simultaneously pop up on both platforms.
*In theory.*
3. Once posted, we will get the photo ID for each IG post.
4. Using the ID, we can now embed the IG post on the website, thanks to the workaround mentioned earlier.

### Taking Photos

Photo-taking is done during daytime, when we make use of natural light.

Initially, we used an iPhone to take photos of the books.
Transferring files between Apple devices (in our case, iPhone and Mac) is easy, using AirDrop.

However, the iPhone is no longer available in this operation.
We need solutions that don't rely on AirDrop's convenience.

We have two options left: a digital camera, and an Android phone, the same one where we will be posting on IG.
For better quality photos, the digital camera is the obvious choice.
Its SD Card will also fit nicely in one of the Mac's ports.

The phone's camera will serve as a backup.

### Syndication of Posts

If embedding posts from IG would fail somehow in the future, we could just post directly on the website.
Right now, as mentioned, we focus the content management in IG due to its reach.

[^iife]: For more information, read the [Mozilla's explainer](https://developer.mozilla.org/en-US/docs/Glossary/IIFE)
