---
title: "Fixing Automatic Top-load Washing Machine"
date: 2021-05-16T05:02:30+08:00
keywords: ["ohio quilbio olarte", "ohio olarte", "oqolarte", "kishotenketsu", "washing machine fix", "washing machine repair", "LG fuzzy logic", "automatic top-load washing machine repair"]
draft: false
---

## Introduction

In our home, we dedicate at least one day of the weekend for washing our clothes;
two if we've accumulated so many laundry during the week.

This is a special weekend, though.
It's my turn to do the laundry this week.

After I load the dirty clothes into the tub of the top-load LG Fuzzy Logic 6.0, put detergent,
and turn the power on,
the machine wakes up and begins its job.

One only needs to set up a program for the batch,
and after pressing Start,
one can leave it to do other things.
It has a distinct beeping to notify the operator that the laundry is done,
and the clothes are ready to be hung.

But on this special weekend,
**it beeps an error-sounding alarm,
accompanied by the blinking of two indicator lights, WASH and SPIN**.
It doesn't proceed further.

Something is wrong.

## Development

Several things go through my mind:
- I don't want to pay for a technician[^technician] to repair this machine;
- I don't want to buy a new one;
- I don't want to go to a laundry shop, and pay for their services;
- I don't want to manually wash the laundy by hand.

[^technician]: Besides, it's Sunday.
It's unlikely that someone is available.

These four thoughts converge to a single one:
I need to repair it myself, hopefully before the day ends.

I have little knowledge when it comes to repairing washing machines.
So I went to the internet to look for possible solutions.

### Troubleshooting

It could be the water sensor.
This device detects the water level,
and relays this information to the control board for processing.
However, if this is the problem,
it should be that all the indicator lights for WATER LEVEL that are blinking.
I know this, because when I disconnect the wires of the water sensor,
this is what happened, plus the error beeps.
For good measure, I also test the water sensor's continuity with my digital multimeter:
it's still in good condition.

It could be the capacitor.
Capacitors in washing machines,
and usually in other appliances with motors in them,
jump-starts the motor from its steady-state to rotation.
They're tricky to access,
usually from the underside, or from the back.
In this machine, the capacitor is rated at 8.5 μF (micro-farads).
Still with my digital multimeter, I probe the capacitors terminals.
The reading on the multimeter increases steadily up to a point
where the capacitor discharges, and returns to 0 (zero);
and begin climbing again.
This means that the capacitor, too, is in good condition.

These are the two most common problems to check,
but they are both functional.
What's next?

## Twist

No one is exempted from entropy.
Perhaps this is why many professions prioritize safety.
This is especially true when human lives are involved.

A safety program can last from 40 hours up to a *lifetime*.
Let's face it:
no amount of license or certificate can guarantee 100% safety.
Once we accept that we don't know what we don't know,
learning becomes imperative and not as hard.

We open ourselves to continuously adapt to the challenges.
We can suspend our biases, if only for a while,
to hopefully design better safety mechanisms in our daily technology.

## Conclusion

In automatic top-load washing machines,
either of these two will happen when the lid is open:
1. spinning won't start when in steady-state; or
2. spinning will stop when in the middle of spinning.

This safety feature is implemented with the use of 
magnets---one is placed on the lid cover,
and the other near the control board.
Only when these two magnets are aligned and interacting,
i.e. when the lid is closed, will the control board 
allow the spinning to start
(or be resumed).

Isya tells me this info, which she got from a technician
who repaired this machine when it broke down years ago.
A few search results also raises the chance that this could be it.

Magnet is the key.
The old one in the lid is lost, and we need a new hack.
But where to place it?

My trial-and-error testing involves starting the WASH process,
until it error-beeps.
Then I try sliding the fridge magnet along the inside edge of the control board.
The beeping stops when the magnet reaches the center.
It then proceeds with the WASH process.

I test this with other modes (RINSE, SPIN), and the same thing happens:
error beeping stops when the magnet is at the center.
It then proceeds with whatever mode it's on.

I permanently install the magnet on the lid cover
using superglue and baking soda.
Hopefully it sticks for a long time.

Finally, I can go on with the laundry hassle-free.

{{< figure src="/image/lgfz.jpeg" alt="digital control panel of a top-load automatic washing machine" caption="Fridge Magnet solves the issue. Now where's the manual?" >}}
