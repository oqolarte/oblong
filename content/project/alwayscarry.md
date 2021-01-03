---
title: "Always Carry A Book Website"
date: 2021-01-02T15:02:49+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "static site", "static e-commerce site", "online bookshop"]
draft: false
---
## Status: On-going {.statusOnGoing}

My partner has asked me to come up with a website to act as a central hub for their recently opened online bookshop.
This site shall mirror the contents of the shop's other social media presence.

Visit the site, whose name I also came up with:
**[Always Carry A Book](https://alwayscarry.netlify.app)**

{{< figure src="/image/acabooks.png" alt="screenshot from Always Carry A Book website " caption="Screenshot from the website" >}}

## Design Choices

I figured that since this would just be a small online shop, a full-blown e-commerce site with lots of features is unnecessary.
Having this in mind, I decided that a static site would do.
Since I'm already familiar with [Hugo](https://gohugo.io), I use it as my static site generator.

The business is literally just starting out.
One major decision is to use free software services for the time being.

Of course, the intention is to scale, and add the necessary functions as the business starts raking in the dough.

### Landing Page Logo
The cat-holding-a-book image is drawn by Isya herself, using Wacom Bamboo Tablet on [Krita](https://krita.org), a free and open source painting program, that's also available in many platforms.

The image is then compressed and optimized for the web.

### Payment Gateway?

It's only natural for an e-commerce site to have a payment method coded in it.
However, right now, it has no integrated payment gateways like PayPal, Stripe, or others, in the site.

Payment will be made in "less convenient" ways, by employing other known services like GCash, PayMaya, and the traditional Bank Transfer.

Google Forms is also used for the customers to fill up when placing their orders.

For now, this will have to do.

### Integration with Instagram

In order to reach as many prospects as possible, the shop is also available in Instagram and Facebook.
We're thinking of focusing a huge chunk of content management via IG.
Each post will then appear on the Facebook Page, and on the website.

I had a brilliant idea to use Hugo's native integration with Instagram through their API, according to [Hugo's documentation](https://gohugo.io/content-management/shortcodes/#instagram).
The first try, though, it already failed.

It turns out, the Instagram shortcode is deprecated since 24 Oct 2020, [according to this discussion.](https://github.com/gohugoio/hugo/issues/7879) 

Good thing that from that same discussion, [monsieurnebo's fix](https://github.com/gohugoio/hugo/issues/7879#issuecomment-737149676) (based on ToniTornado, but with a bit smaller code) got it going for me.

For the time being, I can use the IG photo's ID to be embedded on the site.

### Hosting: GitHub + Netlify

The source files are on GitHub. The HTML files are then deployed to Netlify.

I make the changes (edit, generate the site, etc.) locally, in a laptop.
These changes are then committed and pushed to the GitHub repository.
Finally, I have set up Netlify to detect the changes from the repository, and the site is deployed for public viewing.


## How A Transaction Looks Like

Here, I outline the processes involved for the customer and the dealer.
We will look

### Customer Side

1. Customer browses the book list, and makes a selection.
2. Customer fills up the Form, giving us the needed details of the order.
3. Customer waits for the invoice.
Ideally, it arrives within 24 hours.
When the invoice is confirmed to have been received, this informs the customer that their order is reserved under their name for the next 24 hours.
4. Customer pays within 24 hours of receiving the invoice.
Otherwise, the reservation is revoked, and the order is made available again for the public.
5. Once payment is verified, package will be packed and sent.
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
