---
title: "Basic Statistics"
date: 2022-11-01
draft: false
math: true
---

## Data and Charts

Stories are illustrated by charts, graphs, tables.
These tools present [data sets in a meaningful way](/data-management).

However, statistics cannot provide all the answers!
Too much quantification can be a problem. For example, do we really need
data on coffee preference before making it, instead of just making it?

## The Middle
A statistical story starts in the 'middle': mean, median, mode.
- mean: average
- median: middle: (n+1)/2
- mode: most common
- some data sets might have no mode
- (all data points appear only once),
or multi-modal
(some different data points appear equal number of times)

## Variability

Variability is how spread-out data sets are.

Range studies the 'edges' of a data set, as compared to its middle.
However, this only considers two data points, the smallest and largest value.

Standard Deviation is the average squared distance of a data point from the mean.
Z-score: a data point's distance, in standard deviations, from the mean.
Empirical Rule: Most of the data points in each data set fall within three standard deviations of the mean

In a normal distribution, empirical rule says that 68% of all your data are within one standard deviation from the mean.
95% of data points fall within two standard deviations from the mean.
99.7% of data points fall within three standard deviations from the mean.
Outlier is a data point that is an abnormal distance from the other values in the data set.
Outliers, when investigated, can give us new insights.

## Statistical significance

Statistical significance is an inference based on some kind of burden of
proof.

One way to [explain a hypothesis test to a non-statistical audience](https://math.stackexchange.com/questions/2165761/how-to-explain-to-non-mathematician-what-statistical-significance-is) is to
give an example about coin tossing.

Suppose I have a coin. I know whether it is a fair or unfair coin; i.e.,
I know whether it lands heads or tails with equal frequency, or if it
does not. I let you borrow the coin, but I don't tell you about its
fairness. How would you try to infer this property of the coin?

Naturally, your intuition tells you to flip it, preferably "many" times,
and see whether the coin lands heads or tails with "approximately" equal
frequency. But how much is "many?" How "approximately equal" do the
frequencies of outcomes need to be, or how "approximately unequal" do
they need to be for you to be confident in asserting that the coin is
unfair?

Let's address this second question first by momentarily supposing that I
have only allowed you to keep the coin for ten flips, after which I will
want it back. So you perform the experiment, flip the coin ten times,
and you observe that the coin has landed heads 9 times and tails once.
This intuitively seems very odd to you. You might think, "wow, this coin
seems biased." But is it? And if it is, how confident are you of this
assertion?

After all, even a fair coin could behave this way. It may not be very
likely, but it isn't impossible.

This leads us to reason that if the coin had indeed been fair, what was
the chance of observing an outcome so extreme? That is to say, how
likely is it that a fair coin, when flipped ten times, could show at
least:

- 9 heads, 1 tail
- 10 heads, 0 tails
- 9 tails, 1 head
- 10 tails, 0 heads?

We count all of these outcomes because in a sense, you would be just as
surprised to see the last three outcomes as you would be to see the
first. 9 tails and 1 head from a fair coin is just as surprising as 9
heads and 1 tail. And 10 of the same outcome is even more surprising.

So, unlikely, but not impossible. And this speaks to your level of
confidence of your assertion that the coin is unfair: "statistically
significant" might mean that you are willing to be wrong about the coin
(in the sense of erroneously concluding it is unfair when it actually
was fair) as much as 5% of the time, in which case, your experiment met
your definition of significance. But if I now tell you, "if you make an
incorrect claim that the coin is unfair, you will be penalized $1000,"
you might be much less willing to take a 5 percent chance on being wrong
in this way, especially if there is no penalty for failing to detect if
the coin is unfair. You would naturally want to demand that you be
allowed to flip the coin more times and your burden of proof would be
higher--perhaps you'd need to see at least 19 out of 20 heads, or 99 out
of 100 heads, before you're willing to assert the coin is unfair.

And this goes back to our first question: how many tosses is "enough?"
If you say you need to be at least 99% confident, then clearly, being
allowed to toss the coin only five times is nowhere near good enough:
even if the outcome is all heads, or all tails, there is a
\( 1/32 + 1/32 = 1/16 = 0.0625 > 0.01 \) chance
of a fair coin giving such an outcome.

Without going into too many mathematical details, then, the sample size
is clearly related to our error tolerance. If I let you toss the coin a
thousand times, and your standard of statistical significance was that
you need to be at least 99% confident that the coin is unfair, you would
need to observe at least 542 heads or 542 tails out of 1000 tosses to
conclude that the coin is unfair.

Statistical significance is never a proof. We can only have a high
probability that some hypothesis is false.
