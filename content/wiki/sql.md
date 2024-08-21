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

## SQL queries

Every bit of information that’s accessed online is stored in a database.
A **database** is an organized collection of information or data in one
place. A database can include data such as an organization's employee
directory or customer payment methods. In SQL, database information is
organized in tables. SQL is commonly used for retrieving, inserting,
updating, or deleting information in tables using queries.

A SQL query is a request for data from a database. For example, a SQL
query can request data from an organization's employee directory such as
employee IDs, names, and job titles. A human resources application can
accept an input that queries a SQL table to filter the data and locate a
specific person. SQL injections can occur anywhere within a vulnerable
application that can accept a SQL query.

Queries are usually initiated in places where users can input
information into an application or a website via an input field. Input
fields include features that accept text input such as login forms,
search bars, or comment submission boxes.
A [SQL injection](/web-based-exploits/#sql-injection)
occurs when an attacker
exploits input fields that aren't programmed to filter out unwanted
text. SQL injections can be used to manipulate databases, steal
sensitive data, or even take control of vulnerable applications.

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

`INNER JOIN`
: returns rows matching on a specified column that exists in more than
one table. It only returns the rows where there is a match, but like
other types of joins, it returns all specified columns from all joined
tables.

```sql
SELECT *
FROM employees
INNER JOIN machines ON employees.device_id = machines.device_id;
```

Specify the two tables to join by including the first or left table
after FROM and the second or right table after `INNER JOIN`.

After the name of the right table, use the `ON` keyword and the `=`
operator to indicate the column you are joining the tables on. It's
important that you specify both the table and column names in this
portion of the join by placing a period (.) between the table and the
column.

`LEFT JOIN`
: returns all the records of the first table, but only returns rows of
the second table that match on a specified column.

```sql
SELECT *
FROM employees
LEFT JOIN machines ON employees.device_id = machines.device_id;
```

As with all joins, specify the first (or left) table as the table that
comes after `FROM` and the second (or right ) table as the table that
comes after ` LEFT JOIN`. In the example query, because employees is the
left table, all of its records are returned. Only records that match on
the `device_id` column are returned from the right table, `machines`.

`RIGHT JOIN`
: returns all of the records of the second table, but only returns rows
from the first table that match on a specified column.

```sql
SELECT *
FROM employees
RIGHT JOIN machines ON employees.device_id = machines.device_id;
```

`RIGHT JOIN` has the same syntax as `LEFT JOIN`, with the only
difference being the keyword `RIGHT JOIN` instructs SQL to produce
different output. The query returns all records from `machines`, which
is the second table. Only matching records are returned from
`employees`, which is the first table.

`FULL OUTER JOIN`
: returns all records from both tables. You can think of it as a way of
completely merging two tables.

```sql
SELECT *
FROM employees
FULL OUTER JOIN machines ON employees.device_id = machines.device_id;
```

The results of a `FULL OUTER JOIN` query include all records from both
tables. Similar to `INNER JOIN`, the order of tables does not change the
results of the query.

## Aggregate functions

In SQL, aggregate functions are functions that perform a calculation
over multiple data points and return the result of the calculation. The
actual data is not returned.

`COUNT`
: returns a single number that represents the number of rows returned
from your query.

`AVG`
: returns a single number that represents the average of the numerical
data in a column.

`SUM`
: returns a single number that represents the sum of the numerical data
in a column.

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
