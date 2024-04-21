---
title: "Key Distribution Problem"
date: 2023-11-22
draft: false
---

Secure distribution of key material does not scale well to large
networks.

- Pairwise keys provide greatest security;
        - but only if the keys are properly managed.
        - This requires N (N - 1) / 2 = ~N^2 keys
- Modern networks have millions of keyed nodes.
- Common keys (say, shared among large group of users) are more manageable, but insecure.
        - The larger the group, the more valuable the key compromise.
        - Easier to compromise (more users means increased chance that
          someone in the group becomes careless)
        - More difficult to detect a compromise.

[Public key cryptography](/public-key-cryptosystems) addresses the key distribution problem.
