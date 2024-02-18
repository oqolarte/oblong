---
title: "Data Encryption Standard (DES)"
date: 2024-01-15
draft: false
math: true
---

Most widely used block [cipher](/ciphers).

- Block size: 64 bits (32 bits per half)
- Key size: 56 bits
- Number of rounds: 16 rounds
- Subkey generation
- Round function

DES adds permutation blocks at the beginning and the end, aptly called
Initial Permutation and Final Permutation respectively.

## DES Round Function

Round function, F, which is implemented in every round, takes the right
half of the plaintext and performs substitution to generate the output.
The output is then [XOR](/xor)'d with the left half of the plaintext.

F has two inputs:
R (32 bits), K (48 bits)

where R is the right half of the round *i*, and K is the subkey of K of
round *i*.

Steps:

1. The 32-bit data corresponding to R gets expanded into 48 bits. This
   expansion E involves permutation or reordering of the bits.
2. The output of the expansion E gets XOR'd with the sub key.
3. Then the xor output goes through substitution and compression using
   eight substitution S boxes. Each of which takes six bits of input and
   outputs four bits. The mapping of an S box is through a lookup table.
4. The 32-bit output of the eight S boxes goes through another
   permutation which produces the output of 32 bits. These 32 bits are
   the output of F.

## DES Subkey generation

In DES, you create 16 different subkeys out of the main one, one for
each of round.

1. Starting key: Begin with a 64-bit key. Since 56-bits are actually
   used, the 8 bits are used for parity checking and are not used for
   key generation.
2. Permutation choice 1 (PC1): The 56 bits are sent through PC1, which
   shuffles the bits in a predefined way. The output of this step is
   still 56 bits but have been mixed up based on PC1 table.
3. Splitting: After permutation, the 56-bit key is split into two
   halves, each being 28 bits.
4. Key scheduling: For each round, perform a schedule of shift and
   permutations to generate subkeys. Each round may require a different
   number of left-circular shifts to both halves in previous step.
5. Permutation choice 2 (PC2): After shifting, the halves are combined
   back to form a 56-bit key, which is then sent to PC2. This
   permutation selects 48 bits out of 56 to create the subkey for that
   round. PC2 table dictates which bits are chosen.
6. Repeat: for all 16 rounds, producing 16 different subkeys.

## DES round function in pseudocode

```
# DES encryption pseudocode

# Inputs
# plaintext: 64-bits, to be encrypted
# subkeys [1..16]: Array of 48-bit subkeys for each of the 16 rounds

# Outputs
# ciphertext: 64-bit encrypted output

# Define the initial permutation block
function IP(input_64_bits)
        # implementation of IP not shown
        return permuted_64_bits

# Define the final permutation block
function FP(input_64_bits)
        # implementation of FP not shown
        return permuted_64_bits

# Define round function (F) that uses half the data block (32-bits)
function F(data_32_bits, subkey_48_bits)
        # implementation of F not shown
        return transformed_32_bits

# DES algorithm starts here

# Apply IP to plaintext
IP_output = IP(plaintext)

# Split permuted block to two halves
left_32_bits = IP_output[0..31]     # first 32 bits
right_32_bits = IP_output[32..63]   # last 32 bits

# Perform 16 round functions
for round from 1 to 16
        # store the original right half that will then be the new left half
        new_left_32_bits = right_32_bits

        # apply round function (F) to the right half using the round's
        subkey
        F_output = F(right_32_bits, subkeys[round])

        # combine the output of F with left half using XOR
        new_right_32_bits = left_32_bits XOR F_output

        # prepare for next round
        left_32_bits = new_left_32_bits
        right_32_bits = new_right_32_bits

# after 16 rounds, swap the two halves to form the preoutput block
preoutput = right_32_bits + left_32_bits

# Apply FP
ciphertext = FP(preoutput)

# Return the ciphertext as result
return ciphertext
```

## DES Strength

Due to the avalance effect, DES was relatively strong against brute force
attack, in \( O(2^{55}) \) decryptions.

However, due to advancements in technology, this is no longer the case.
There was a controversy as to why the key was reduced to 56 bits,
from the original 128 bits of the Lucifer algorithm by IBM.
Demonstration of brute force attacks:
- in 1997: a few months to find the key
- in 1998: a few days
- in 1999: 22 hours

Due to brute force threat, DES is considered broken now and is **not
recommended for securing systems and applications**.

The following algorithms were made as a reaction to this:
- [Double DES](/double-des)
- [Triple DES](/triple-des)
- [Advanced Encryption Standard (AES)](/aes)
