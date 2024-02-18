---
title: "Number Theory"
date: 2023-12-01
draft: false
math: true
---

Branch of pure [math](/math) that studies objects like integers, graphs, and
statements in logic.

> Mathematics is the queen of sciences---and number theory is the queen
> of mathematics."
> -- Carl Friedrich Gauss

## Integers

ℤ (doublestruck capital Z) stands for all integers, i.e.,

\( ℤ = {..., -3, -2, -1, 0, 1, 2, 3, ...} \)

- [Integer factorization](https://en.wikipedia.org/wiki/Integer_factorization) is the decomposition of a positve integer into a product of integers.

## Prime Number

A prime number is a positive integer greater than one (1) whose only
positive divisors are 1 and itself.

[1 is not prime.](https://www.youtube.com/watch?v=IQofiPqhJ_s)

\( 2^prime - 1 = prime \)

- [Primality test](https://en.wikipedia.org/wiki/Primality_test) is an algorithm to determine whether an integer is prime. This is helpful in [cryptography](/cryptography).
- [Prime number theorem](https://en.wikipedia.org/wiki/Prime_number_theorem) describes asymptotic distribution of the prime
  numbers among the positive integers.
- [Prime-counting function](https://en.wikipedia.org/wiki/Prime-counting_function) is the function counting the number of prime
  numbers less than or equal to some real number X. Denoted by  π(x)
  (unrelated to the number π).
- If in integer factorization, the smaller integers are prime numbers,
  the process is then called [prime factorization](/prime-factorization).
- [Shor's Algorithm](https://en.wikipedia.org/wiki/Shor's_algorithm) is
  a quantum algorithm for finding the prime factors of an integer,
  developed in 1994 by American mathematician Peter Shor.
- [Primitive root of a prime integer](/primitive-root)

### Fundamental Theorem of Arithmetic

Any integer greater than 1:
- can be written as a unique product of primes
- ordering doesn't count.

## Greatest Common divisor

gcd(a,b) is largest integer that divides both 'a' and 'b'.

The integer 'c' is a common divisor of 'a' and 'b' if:
- a = c * m and b = c * n for some 'm' and 'n'; or
- if c|a and c|b (i.e., "c divides a" and "c divides b" respectively)

gcd(a,b) is the largest common divisor of 'a' and 'b':
- gcd(a,b) >= 1
- by convention, 'a' and 'b' can't be both zero

gcd(a,b) = 1 --> 'a' and 'b' are "[relatively prime](https://en.wikipedia.org/wiki/Coprime_integers)"
- Example are the numbers 8 and 9 since 1 is their only common divisor.

Obviously, this means that there are no remainders when looking for GCD.
Contrast this with [modular arithmetic](/modular-arithmetic), which is a
little more than working with the remainders left over after performing
normal arithmetic operations.

## Important Number Theory concepts

- [Euler's totient function](/euler-totient-function)
- [Euler's Totient theorem](/euler-totient-theorem)
- [Discrete Logarithms](/discrete-logarithms)
- [Chinese Remainder Theorem](/crt)
- [Fermat's Primality Test](/fermat-primality-test)
- [Miller-Rabin Primality Test](https://en.wikipedia.org/wiki/Miller%E2%80%93Rabin_primality_test)
- [Lucas Primality Test](https://en.wikipedia.org/wiki/Lucas_primality_test)
