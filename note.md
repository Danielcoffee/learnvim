# HELLO - VIM command

## MODE

### Insert mode
- press 'i'

### Command mode
- Press ESC twice then hear the bip

#### Movement
1. Single movement

- h: left
- j: down
- k: up
- l: right

2. Movement in a line
- We can ":set vm=10": this is 'wrapmargin' at 10 characters.
- Remember a newline in 'vi'


3. Movement by text blocks

- w: forward
- W: forward (not counting symbols and punctuation)
- b: backward
- B: backward (not counting symbols and punctuation)
- G: go to line
- We can combine with number: 2G, 2w, 3b, ......

#### Delete
- 'dd': delete line
- '2dd': delete 2lines
- D: delete to the end of line
- dG: delete to end of file: "POWERFULL"

## Undo
- Use 'u' to undo last command
- Use 'U': undo to original state.
- Use "CTRL-R": redo

## Replace
- 'p': use when after delete, will put all under the cursor
- 'P': paste above line
- 'r' then other key to replace character.
- 'ce': change from the end of the word
- 'cc' does the same for whole lines.
- 'R': replace until 'esc'

## Go to

- Type: <number>G : go to the line
- 'gg' : the first line of file
- G: end of file.

## Search command
- '/': search forward
- '?': search backward: then 'n' for next & "N" for reverse direction
- 'CTRL + i" and "CTRL + o" for back and continues.
- set ignore case or not: ':set ic' or ':set noic'
- set highlight or not: ':set hlsearch' or ':set nohlsearch'
- set phrase or not: ':set is'


### Find matching [, { & (

- Use '%' for this.
- hello there

## Insert
- o: insert below cursor
- O: insert above cursor
- a: append after cursor
- A: append end of line
- s: Delete single character then insert
- S: Delete line then edit
- r: replack
- R: replace util 'esc'
- number + insert
- 2ra, 23a* 'esc', 3i*'esc',

## Copy
- Can use 'yw': copy one word
- use 'yy' copy whole line

## Change lowercase to uppercase

- test upper case in to Lowercase in reverse
- we can use '~' to change

## Transposing two letters
- we use 'xp' to transposing
- lnie to line


## Copy text
- 'y' for 'yank'
- We can use: 'y0', 'yw', yy, y$, 2yy,.....
- Hello

## Repeat

- Use '.' to repeat command

## Joining two lines with J

- We can use 'SHIFT + J': join line below cursor
- Then we can use '.' to repeat
- <number> + J: can join mutil lines: `powerful`


with a screen editor you can
scroll the page,
move the cursor im here now. this is my first time i use keyboard in my in my i pad


# Moving around in a hurry
# Beyond the basic
# The ex editor
# Global replacement
# Advanced editing
# Vim improve
# Graphical Vim
# Multiple Windows in Vim
# Vim enhancements for programmer
# Vim scripts
# Other cool stuff in Vim
# Some vim power Techniques
# Vim as IDE
# Vi is everywhere
# Epilogue

