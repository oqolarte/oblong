---
title: "Key length determination in Polyalphabetic Ciphers"
date: 2023-11-24
draft: false
---

Polyalphabetic [ciphers](/ciphers) are considerably more difficult to break than
monoalphabetic ones.

Giovan Battista Bellaso devised an elegant implementation of a
polyalphabetic cipher based on the Tabula Recta that today is known as
the Vigenère cipher.

## Classic Vigenère cipher

- [Modular arithmetic](/modular-arithmetic) sums up Vigenère cipher.
        - Assign each of the N letters an integer from 0 to N - 1.
        - To encrypt: C = (P + K) mod N
        - To decrypt: P = (C - K) mod N
        - Where C is ciphertext, P is plaintext, K is key, and N is the
          number of letters.
- Vigenère cipher can be a [one-time pad](/vernam-cipher) if the key is:
        - same length as plaintext
        - chosen randomly
        - never reused

### Vigenère Cipher encryption pseudocode

```
# Inputs
# plaintext: string of English alphabet letters to be encrypted
# key: string of English letters used as encryption key

# Output
# ciphertext: string of encrypted English letters

# Function to convert a letter to its corresponding numerical value
# (A=0, B=1, ..., Z=25)
# ord function returns ASCII value of a character
function letter_to_number(letter)
        return ord(letter) - ord('A')

# Function to convert a numerical value to its corresponding letter
# (0=A, 1=B, ..., 25=Z)
# chr function returns a character from ASCII value
function number_to_letter(number)
        return chr((number mod 26) + ord('A'))

# Main encryption function
function vigenere_encrypt(plaintext, key)
        # Ensure the key has at least one character
        if length(key) == 0
                return "Error: Key must have at least one character."

        # Initialize ciphertext as empty string
        ciphertext = ""

        # Iterate over each character in the plaintext
        for i from 0 to length(plaintext) - 1
                # if the character is a letter, encrypt it
                if is_letter(plaintext[i])
                        # convert the plaintext letter and key letter to numbers
                        plaintext_number = letter_to_number(plaintext[i])
                        key_number = letter_to_number(key[i mod length(key)])

                        # perform the shift for Vigenère cipher
                        encrypted_number = (plaintext_number + key_number) mod 26

                        # convert the number back to a letter an append to ciphertext
                        encrypted_letter = number_to_letter(encrypted_number)
                        ciphertext = ciphertext + encrypted_letter
                else
                        # non-letter characters are added to the ciphertext unchanged
                        ciphertext = ciphertext + plaintext[i]
        # Return the ciphertext result
        return ciphertext
```

The `vigenere_encrypt` function iterates over each character in
plaintext using [modular arithmetic](/modular-arithmetic) (via `mod`
modulo operator) to wrap around
the key if the plaintext is longer than the key.

The `ord` function is assumed to return the ASCII value of a character,
and `chr` function is assumed to return a character from an ASCII value.

## Breaking the Vigenère cipher

To break, one can use coincidence analysis to determine key length.

Given key length (say L), ciphertext can be split into [monoalphabetic sets](/monoalphabetic-ciphers).
        - Every Lth letter uses same key, then the Vigenère is a simple
          Caesar Shift, and frequecy analysis applies.
        - Ciphertext could, by trial and error, be split into sets that
          have expected frequency distribution.
        - Coincidences, a powerful tool, determine key length.
- If the ciphertext characters appear uniformly and seemingly at random,
  frequency analysis is rendered very ineffective.
