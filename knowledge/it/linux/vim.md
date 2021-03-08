---
description: A gentle guide to vim
---

# vim

Vim is an improved version of [vi editor](https://en.wikipedia.org/wiki/Vi). Its interface can be scary at the beginning but after understanding its modes and a few commands, it can be very productive.

### Vim modes

Vim has two important modes to know:

* **command mode**: this is the default mode, you can go to other modes from the command. 
  * From the command mode type `i` to go to insert mode.
* **insert mode**: this is for editing a file as you are expecting, i.e., what you type will be inserted where the cursor is blinking. 
  * Press `ESC` to go back to command mode.

### Navigating into a document

* `h`, `J`, `k` and `l` move the cursor one character to left, down, up and right. Arrow keys also work.
* `0` \(zero\) and `$` move the cursor to the beginning and end of the line. Home and End keys also work.
* `w` and `b` move the cursor to the next and the previous word. Using Ctrl + left and right arrows move from words separated by spaces.
* `gg` and `G` move the cursor to the beginning or end of file. Ctrl+Home and Ctrl+End also work.

The commands can also be executed multiple times when preceded by a number, e.g., 3w will move the cursor 3 words forward.

### Changing a document

* `d` delete from cursor, e.g., `dh` deletes the character on the left, `d0` deletes until the beginning of the text.
* `u` and `Ctrl+r` undo and redo.

### Selecting

* `v`, `V` and `Ctrl+v` go to visual from the cursor, entire line and by columns

### Copying and pasting

* `y` copy
* `p` and `P`: paste after current line and on the current line

### Searching and replacing

* `/text` and `?text` search "text" going forward and backward
* `n` and `N` go to next occurrence going forward and backward
* `:%s/text/new text/gc` and `:%s/text/new text/g` replace "text" by "new text" asking to confirm on every occurrence and replacing without asking.

### Saving and quitting

* `:q!` discard changes and quit
* `:w` save changes
* `:wq` save and quit

