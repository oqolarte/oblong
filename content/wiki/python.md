---
title: "Notes on Python"
date: 2024-09-12
draft: false
math: false
---

Python is considered to be a general
[programming language](/programming)
that is used to create a wide variety of
programs. Typically used to build websites and perform data analysis.
In [cybersecurity](/cybersecurity), it's mainly used to automate tasks.

{{< toc >}}

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

### Parsing

Parsing means coverting data into readable format. `.split()` and
`.join()` methods are both useful for parsing data. `.split()` method
allows you to convert a string into a list, and the `.join()` method
allows you to convert a list into a string.

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

## More about regular expressions (regex)

Regex is a sequence of characters that forms a pattern. Use these in
Python to search for a variety of patterns. To do that, import the regex
module first:

```
import re
```

Regexs are stored in Python as strings. Then, these strings
are used in `re` module functions to search through other strings.

The `re.findall()` function returns
a list of matches to a regular expression. It requires two parameters.
The first is the string containing the regular expression pattern, and
the second is the string you want to search through.

### regex symbols

- `\w` matches with any alphanumeric character
- `.` matches to all characters, including symbols
- `\d` matches to all single digits [0-9]
- `\s` matches to all single spaces
- `\.` matches to the period character
- `+` represents one or more occurences of a specific character
- `*` represents zero, one, or more occurences of a specific character
- `{*n*}` (curly brackets) indicates a specific number of repetitions,
  where *n* is a positive integer

### Constructing a pattern

Constructing a regex pattern means breaking down the pattern you're
searching for into smaller chunks and represent those chunks using the
symbols.

Example: You are tasked to extract username and the login attempts,
without employee's ID number or department from the following data log:

`employee_logins_string = "1001 bmoreno: 12 Marketing 1002 tshah: 7 Human Resources 1003 sgilmore: 5 Finance"`

The python script, with regex in `pattern` variable, would be:

```
import re
pattern = "\w+:\s\d+"
employee_logins_string = "1001 bmoreno: 12 Marketing 1002 tshah: 7 Human Resources 1003 sgilmore: 5 Finance"
print(re.findall(pattern, employee_logins_string))]
```

This would output the following:

```
['bmoreno: 12', 'tshah: 7', 'sgilmore: 5']
```

## Importing, reading, and writing files

To **open a file** called `example.txt`:

```
with open("example.txt","r") as file:
```

where:
- `with` is a keyword that handles errors and manages external
  resources. In this case, it is used with...
- `open()` to open a file. This requires two parameters:
        - the `example.txt` (in quotes) being the first. More
          importantly, this is should be the file path to where the
          actual file is;
        - `"r"`, meaning "read the file", being the second.
          Alternatively, `"w"` is also available for writing a file or
          `"a"` for appending to a file.
- `as` is a keyword that must be followed by a variable name for the
  file object, to be referenced within the `with` statement

After opening, we can do something with the `file`. **To read it**:

```
with open("example.txt", "r") as file:
    sample_data = file.read()
print(sample_data)
```

`.read()` method converts files into strings, making the data available
for different string manipulation.

As said, we can also **write to a file** using the `.write()` method and
`a` parameter. Consider the sample code
below:

```
line = "jrafael,192.168.243.140,4:56:27,True"
with open("access_log.txt", "a") as file:
    file.write(line)
```

## Automation in Python

- Variables are used to store data so that it can be repeatedly used and
  recalled in other parts of the process.
- Conditional statements allows for checking conditions before
  performing actions.
- Iterative statements (`for`, `while`) allows for performing the same
  actions a certain number of times without the need to retype the same
  code each time.
- Functions reduce the need to incorporate the same code multiple
  places in a program. Define it once, and call wherever you need it.
  You can also incorporate the built-in functions already in the Python.

## Debugging in Python

Debugging means checking the code so that it is working as intended.

### Types of errors

- **Syntax errors** are errors that involve invalid usage of a programming
  language. Syntax errors occur when there is a mistake with the Python
  syntax itself. Often begin with the label `SyntaxError`.
- **Logic errors** are errors tha result when the logic used in code
  produces unintended results. Logic errors may not produce error
  messages.
- **Exceptions** are errors that involve code that cannot be executed
  even though it is syntactically correct. This happens for a variety of
  reasons.

### Strategies

- **Use a debugger** that is often included in integrated development
  environment (IDE). A debugger is a software tool that helps locate the
  source of an error and assess its causes.
- **Use print statements** strategically in chunks of code to determine
  if it's even being executed. One strategy is by including the line of
  code as well as a descriptive text about the location.

## Resources

- [Python's built-in functions](https://docs.python.org/3/library/functions.html)
