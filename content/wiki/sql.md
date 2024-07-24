---
title: "Structured Query Language (SQL)"
date: 2024-07-23
draft: false
math: false
---

Structured Query Language (SQL) (pronounced S-Q-L; historically
"sequel") is a domain-specific language used to manage data,
especially in a relational database management system (RDBMS). It is
particularly useful in handling structured data, i.e., data
incorporating relations among entities and variables.

## Basic SQL query

`SELECT`
: indicates which columns to return.

`FROM`
: indicates which table to query. To use the `FROM` keyword, you should
write it after the `SELECT` keyword, often on a new line, and follow it
with the name of the table you’re querying.

`ORDER BY`
: is written at the end of the query and specify a column to base the
sort on. The `ORDER BY` keyword sorts the records based on the column
specified after this keyword. By default, the sequence will be in
ascending order, meaning:
- numeric data are ordered from smallest to largest;
- alphabetic characters are ordered from beginning of alphabet to end

To sort by descending order, add the keyword `DESC` with the `ORDER BY`
keyword.

Example:

```sql
SELECT customerid, city, country
FROM customers
ORDER BY city DESC;
```

`WHERE`
: indicates the condition for a filter.

wildcard
: is a special character that can be substituted with any other
character. Two of the most useful wildcards are the percentage sign (%)
and the underscore:
- The percentage sign substitutes for any number of other characters.
- The underscore symbol only substitutes for one other character.

`LIKE`
: To apply wildcards to the filter, you need to use the `LIKE` operator
instead of an equals sign (=). `LIKE` is used with `WHERE` to search for
a pattern in a column.

```sql
SELECT lastname, firstname, title, email
FROM employees
WHERE title LIKE 'IT%';
```

`BETWEEN`
: filters for numbers or dates within a range. Used in conjuntion with
`AND` to identify the range, like so:

```sql
SELECT firstname, lastname, hiredate
FROM employees
WHERE hiredate BETWEEN '2002-01-01' AND '2003-01-01';
```

## Accessing SQL

There are many interfaces for accessing SQL and many different versions
of SQL. One way to access SQL is through the Linux command line.

To access SQL from Linux, you need to type in a command for the version
of SQL that you want to use. For example, if you want to access SQLite,
you can enter the command `sqlite3` in the command line.

## Linux vs SQL filtering

### Purpose

Linux filters data in the context of files and directories on a
[computer system](/computer).
It’s used for tasks like searching  for specific files,
manipulating file permissions, or managing processes.

SQL is used to filter data within a database management system. It’s
used for querying and manipulating data stored in tables and retrieving
specific information based on defined criteria.

### Syntax

Linux uses various commands and command-line options specific to each
filtering tool. Syntax varies depending on the tool and purpose. Some
examples of Linux commands are `find`, `sed`, `cut`, and `grep`.

SQL uses the Structured Query Language (SQL), a standardized language
with specific keywords and clauses for filtering data across different
SQL databases. Some examples of SQL keywords and clauses are `WHERE`,
`SELECT`, `JOIN`

### Structure

SQL offers a lot more structure than Linux, which is more free-form and
not as tidy.

For example, if you wanted to access a log of employee log-in attempts,
SQL would have each record separated into columns. Linux would print the
data as a line of text without this organization. As a result, selecting
a specific column to analyze would be easier and more efficient in SQL.

In terms of structure, SQL provides results that are more easily
readable and that can be adjusted more quickly than when using Linux.

### Joining tables

Some [security-related](/security) decisions require information from
different tables. SQL allows the analyst to join multiple tables
together when returning data. Linux doesn’t have that same
functionality; it doesn’t allow data to be connected to other
information on your computer. This is more restrictive for an analyst
going through security logs.

### Best uses

Although SQL has a more organized structure and allows you
to join tables, this doesn’t mean that there aren’t situations that
would require you to filter data in Linux.

A lot of data used in [cybersecurity](/cybersecurity) will be stored in
a database format that works with SQL. However, other logs might be in a
format that is not compatible with SQL. For instance, if the data is
stored in a text file, you cannot search through it with SQL. In those
cases, it is useful to know how to filter in Linux.
