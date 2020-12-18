---
description: regular expressions
---

# regex

## Metacharacters \(source [freeformatter.com](https://www.freeformatter.com/regex-tester.html)\)

<table>
  <thead>
    <tr>
      <th style="text-align:left">Character</th>
      <th style="text-align:left">What does it do?</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">$</td>
      <td style="text-align:left">Matches the <b>end of the input</b>. If in multiline mode, it also matches <b>before a line break character</b>,
        hence every end of line.</td>
    </tr>
    <tr>
      <td style="text-align:left">(?:x)</td>
      <td style="text-align:left">Matches &apos;x&apos; but <b>does NOT remember the match</b>. Also known
        as NON-capturing parenthesis.</td>
    </tr>
    <tr>
      <td style="text-align:left">(x)</td>
      <td style="text-align:left">Matches &apos;x&apos; and <b>remembers the match</b>. Also known as capturing
        parenthesis.</td>
    </tr>
    <tr>
      <td style="text-align:left">*</td>
      <td style="text-align:left">Matches the preceding character <b>0 or more times</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">+</td>
      <td style="text-align:left">Matches the preceding character <b>1 or more times</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">.</td>
      <td style="text-align:left">Matches <b>any single character except the newline character</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">?</td>
      <td style="text-align:left">
        <ul>
          <li>Matches the preceding character <b>0 or 1 time</b>.</li>
          <li>When used after the quantifiers *, +, ? or {}, <b>makes the quantifier non-greedy</b>;
            it will match the minimum number of times as opposed to matching the maximum
            number of times.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">[\b]</td>
      <td style="text-align:left">Matches a <b>backspace</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">[^abc]</td>
      <td style="text-align:left">Matches <b>anything NOT enclosed by the brackets</b>. Also known as a negative
        character set.</td>
    </tr>
    <tr>
      <td style="text-align:left">[abc]</td>
      <td style="text-align:left">Matches <b>any of the enclosed characters</b>. Also known as a character
        set. You can create range of characters using the hyphen character such
        as A-Z (A to Z). Note that in character sets, special characters (., *,
        +) do not have any special meaning.</td>
    </tr>
    <tr>
      <td style="text-align:left">\</td>
      <td style="text-align:left">
        <ul>
          <li>Used to indicate that the <b>next character should NOT be interpreted literally</b>.
            For example, the character &apos;w&apos; by itself will be interpreted
            as &apos;match the character w&apos;, but using &apos;\w&apos; signifies
            &apos;match an alpha-numeric character including underscore&apos;.</li>
          <li>Used to indicate that a <b>metacharacter is to be interpreted literally</b>.
            For example, the &apos;.&apos; metacharacter means &apos;match any single
            character but a new line&apos;, but if we would rather match a dot character
            instead, we would use &apos;\.&apos;.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">\0</td>
      <td style="text-align:left">Matches a <b>NULL character</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">\b</td>
      <td style="text-align:left">Matches a <b>word boundary</b>. Boundaries are determined when a word character
        is NOT followed or NOT preceeded with another word character.</td>
    </tr>
    <tr>
      <td style="text-align:left">\B</td>
      <td style="text-align:left">Matches a <b>NON-word boundary</b>. Boundaries are determined when two
        adjacent characters are word characters OR non-word characters.</td>
    </tr>
    <tr>
      <td style="text-align:left">\cX</td>
      <td style="text-align:left">Matches a <b>control character</b>. X must be between A to Z inclusive.</td>
    </tr>
    <tr>
      <td style="text-align:left">\d</td>
      <td style="text-align:left">Matches a <b>digit character</b>. Same as [0-9] or [0123456789].</td>
    </tr>
    <tr>
      <td style="text-align:left">\D</td>
      <td style="text-align:left">Matches a <b>NON-digit character</b>. Same as [^0-9] or [^0123456789].</td>
    </tr>
    <tr>
      <td style="text-align:left">\f</td>
      <td style="text-align:left">Matches a <b>form feed</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">\n</td>
      <td style="text-align:left">Matches a <b>line feed</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">\r</td>
      <td style="text-align:left">Matches a <b>carriage return</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">\s</td>
      <td style="text-align:left">Matches a <b>single white space character</b>. This includes space, tab,
        form feed and line feed.</td>
    </tr>
    <tr>
      <td style="text-align:left">\S</td>
      <td style="text-align:left">Matches <b>anything OTHER than a single white space character</b>. Anything
        other than space, tab, form feed and line feed.</td>
    </tr>
    <tr>
      <td style="text-align:left">\t</td>
      <td style="text-align:left">Matches <b>a tab</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">\uhhhh</td>
      <td style="text-align:left">Matches a character with the <b>4-digits hexadecimal code</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">\v</td>
      <td style="text-align:left">Matches <b>a vertical tab</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">\w</td>
      <td style="text-align:left">Matches <b>any alphanumeric character incuding underscore</b>. Equivalent
        to [A-Za-z0-9_].</td>
    </tr>
    <tr>
      <td style="text-align:left">\W</td>
      <td style="text-align:left">Matches <b>anything OTHER than an alphanumeric character incuding underscore</b>.
        Equivalent to [^A-Za-z0-9_].</td>
    </tr>
    <tr>
      <td style="text-align:left">\x</td>
      <td style="text-align:left">A back reference to the substring matched by the x parenthetical expression.
        x is a positive integer.</td>
    </tr>
    <tr>
      <td style="text-align:left">\xhh</td>
      <td style="text-align:left">Matches a character with the <b>2-digits hexadecimal code</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">^</td>
      <td style="text-align:left">
        <ul>
          <li>Matches the <b>beginning of the input</b>. If in multiline mode, it also
            matches <b>after a line break character</b>, hence every new line.</li>
          <li>When used in a set pattern ([^abc]), it negates the set; <b>match anything not enclosed in the brackets</b>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">x(?!y)</td>
      <td style="text-align:left">Matches <b>&apos;x&apos; only if &apos;x&apos; is NOT followed by &apos;y&apos;</b>.
        Also known as a negative lookahead.</td>
    </tr>
    <tr>
      <td style="text-align:left">x(?=y)</td>
      <td style="text-align:left">Matches <b>&apos;x&apos; only if &apos;x&apos; is followed by &apos;y&apos;</b>.
        Also known as a lookahead.</td>
    </tr>
    <tr>
      <td style="text-align:left">x|y</td>
      <td style="text-align:left">Matches <b>&apos;x&apos; OR &apos;y&apos;</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">{n,m}</td>
      <td style="text-align:left">Matches the preceding character <b>at least n times and at most m times. n and m can be omitted if zero.</b>.</td>
    </tr>
    <tr>
      <td style="text-align:left">{n}</td>
      <td style="text-align:left">Matches the preceding character <b>exactly n times</b>.</td>
    </tr>
  </tbody>
</table>

## Testers

* [pythex](https://pythex.org/): a python regular expression composer with a cheatsheet and multiline support.
* [debuggex](https://www.debuggex.com/): online regex tester for python and javascript presents the expression in a graph way describying each part and multiline support.
* [extendsclass](https://extendsclass.com/regex-tester.html): online regex tester for javascript, python, ruby, java, php and mysql with a regex visualizer.

## Source

* [Regular-Expressions-info](https://www.regular-expressions.info/): brings a comprehensive documentation about regex.

