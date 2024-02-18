---
title: "Kerckhoffs' Principle"
date: 2023-11-22
draft: false
---

[Security](/security) through obscurity is bad.

Also rephrased by Claude Shannon as:

> One ought to design systems under the assumption that the enemy will
> immediately gain full familiarity with them.

- System should not have complex rules.
- Algorithms shouldn't need to be secret.
        - Design plans, source codes, when made publicly available,
          allows more eyes to audit it.
- Security should rely on simple keys:
        - Keys should be easily transmittable;
        - Keys should be easily replaced if needed.
