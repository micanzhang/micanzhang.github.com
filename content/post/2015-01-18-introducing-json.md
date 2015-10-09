+++
title = "introducing JSON"
tags = ["JSON"]
date = "2015-01-18T15:17:22+08:00"

+++

> 最近处理thrift的TJsonProtocol时，对json格式需要完整的了解，网上所有了一下，发现了[json.org](http://json.org)的这部分内容，有必要记录下来，方便随时查询。

**JSON** (JavaScript Object Notation) is a lightweight data-interchange format. It is easy for humans to read and write. It is easy for machines to parse and generate. It is based on a subset of the [JavaScript Programming Language](http://javascript.crockford.com/), [Standard ECMA-262 3rd Edition - December 1999](http://www.ecma-international.org/publications/files/ecma-st/ECMA-262.pdf). JSON is a text format that is completely language independent but uses conventions that are familiar to programmers of the C-family of languages, including C, C++, C#, Java, JavaScript, Perl, Python, and many others. These properties make JSON an ideal data-interchange language.

JSON is built on two structures:

+ A collection of name/value pairs. In various languages, this is realized as an object, record, struct, dictionary, hash table, keyed list, or associative array.
+ An ordered list of values. In most languages, this is realized as an array, vector, list, or sequence.

These are universal data structures. Virtually all modern programming languages support them in one form or another. It makes sense that a data format that is interchangeable with programming languages also be based on these structures.

In JSON, they take on these forms:

An object is an unordered set of name/value pairs. An object begins with { (left brace) and ends with } (right brace). Each name is followed by : (colon) and the name/value pairs are separated by , (comma).

![](http://json.org/object.gif)

An array is an ordered collection of values. An array begins with [ (left bracket) and ends with ] (right bracket). Values are separated by , (comma).

![](http://json.org/array.gif)

A value can be a string in double quotes, or a number, or true or false or null, or an object or an array. These structures can be nested.

![](http://json.org/value.gif)

A string is a sequence of zero or more Unicode characters, wrapped in double quotes, using backslash escapes. A character is represented as a single character string. A string is very much like a C or Java string.

![](http://json.org/string.gif)

A number is very much like a C or Java number, except that the octal and hexadecimal formats are not used.

![](http://json.org/number.gif)

Whitespace can be inserted between any pair of tokens. Excepting a few encoding details, that completely describes the language.

***Note:** this artical copyed from [json.org](http://json.org),all right belongs to json.org*
