---
title: "Sieve of Eratosthenes"
date: 2023-12-21
draft: false
---
In [math](/math), this is an ancient algorithm for finding all prime
numbers up to a given limit.
It does so by iteratively marking as composite the
multiples of each prime, starting with the first prime number, 2. The
multiples of a given prime are generated as a sequence of numbers
starting from that prime, with constant difference between them that is
equal to that prime. This is the sieve's key distinction from using
trial division to sequentially test each candidate number for
divisibility by each prime. Once all the multiples of each discovered
prime have been marked as composites, the remaining unmarked numbers are
primes.
