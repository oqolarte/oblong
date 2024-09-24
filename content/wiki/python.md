---
title: "Notes on Python"
date: 2024-09-12
draft: false
math: false
---

Python is considered to be a general
[programming language](/programming)
that is used to create a wide variety of
programs.

Python is typically used to build websites and perform data analysis.
In [cybersecurity](/cybersecurity), it's mainly used to automate tasks.

## Best practices for naming variables

- Use only letters, numbers, and underscores in variable names. Valid
  examples: `date_3`, `username`, `interval2`
- Start a variable name with a letter or underscore. Do not start it
  with a number. Valid examples: `time`,  `_login`
- Remember that variable names in Python are case-sensitive. These are
  all different variables: `time`, `Time`, `TIME`, `timE`.
- Don't use Python’s built-in keywords or functions for variable names.
  For example, variables shouldn't be named `True`, `False`, or `if`.
- Separate two or more words with underscores. Valid examples:
  `login_attempts`, `invalid_user`, `status_update`
- Avoid variables with similar names. These variables could be easily
  confused with one another: `start_time`, `starting_time`,
  `time_starting`.
- Avoid unnecessarily long names for variables. For instance, don't
  give variables names like `variable_that_equals_3`.
- Names should describe the data and not be random words. Valid
  examples: `num_login_attempts`, `device_id`, `invalid_usernames`

## Strings and string manipulation

### Bracket notation

```python
device_id = "h32rb17"
print("h32rb17"[0])
print(device_id[0])
```

In both `print()` statements, the output is `h`, because it is the index
0 value of both `"h32b17"` and `device_id` (which itself has stored the
value string value `"h32b17"`)

```python
print("h32rb17"[0:3])
```

The slice starts at the `0`, but the second index specified after
the colon is excluded. This means the slice ends one position before
index `3`, which is at index `2`.

### `.index()`

```python
print("h32rb17".index("r"))
```

The `.index()` method returns `3` because the first occurrence of the
character `"r"` is at index `3`.

### Finding substrings with `.index()`

A substring is a continuous sequence of characters within a string. For
example, "llo" is a substring of "hello".

The `.index()` method can also be used to find the index of the first
occurrence of a substring. It returns the index of the first character
in that substring.

```python
tshah_index = "tsnow, tshah, bmoreno - updated".index("tshah")
print(tshah_index)
```

The `.index()` method returns the index `7`, which is where the substring
`"tshah" ` starts.


## Python Standard Library

The Python Standard Library is an extensive collection of Python code
that often comes packaged with Python. It includes a variety of modules,
each with pre-built code centered around a particular type of task.
Examples of some modules

- `re` module provides functions used for searching for patterns in log
  files
- `csv` module provides functions used when working with .csv files
- `glob` and `os` modules provide functions used when interacting with
  the command line
- `time` and `datetime` modules provide functions used when working with
  timestamps
- `statistics` module includes functions used when calculating
  [statistics](/statistics) related to numeric data. Example:
    - `mean()` is a function in the statistics module that takes numeric
      data as input and calculates its mean (or average).
    - `median()` is a function in the statistics module that takes
      numeric data as input and calculates its median (or middle value).

**Example of importing a module**

```python
import statistics
monthly_failed_attempts = [20, 17, 178, 33, 15, 21, 19, 29, 32, 15, 25, 19]
mean_failed_attempts = statistics.mean(monthly_failed_attempts)
print("mean:", mean_failed_attempts)
```

The output (i.e., mean) returns `35.25`.

**Example of importing a specific function `from` a module**

```python
from statistics import mean, median
monthly_failed_attempts = [20, 17, 178, 33, 15, 21, 19, 29, 32, 15, 25, 19]
mean_failed_attempts = mean(monthly_failed_attempts)
print("mean:", mean_failed_attempts)
median_failed_attempts = median(monthly_failed_attempts)
print("median:", median_failed_attempts)
```
