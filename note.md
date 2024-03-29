# HELLO - VIM commands

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
- first character of next line: '+'
- first character of pre<number>G: to number of line
- :set nu or :set nonu : turn on and off
- Use `` to back the original positionvious line: '-'

#### Delete
- 'dd': delete line
- '2dd': delete 2lines
- D: delete to the end of line
- dG: delete to end of file: "POWERFULL"
- X: delete character front of cursor
- x: delete character at cursor
- dip: delete all to paragraphap
- dap : delete all & paragraph


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
- 2ra, 23a* 'esc', 3i*'esc', <POWERFUL>


## Copy
- Can use 'yw': copy one word
- use 'yy' copy whole line
- yl: copy character
- can combine with <number>

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

# Moving around in a hurry
## Movement by screen
### Scrolling the screen
- ^F: scroll forward one screen
- ^B: scroll backward one screen
- ^D: scroll down 1/2 screen
- ^U: scroll up 1/2 screen


### Repositioning the screen
- z ENTER: move the cursor to the top of screen an scroll
- z. : to the center
- z-: to the bottom


### Redrawing the screen
- Sometimes has interupt: can use ^L to come back


### Movement within a screen
- H: move to home
- L: move to last line of the screen
- M: center of the screen
- <number>H: line number under H: fixme
- <number>L: line number above L: fixme
- Work on ubuntu




### Movement by line
## Movement by text blocks
- (: Begining of the current sentence.
- ): beginning of the next sentence.
- {: beginning of the current paragraph
- }: beginning of the next paragraph
- [[: beginning of the current section.
- ]]: beginning of the next section.
- We can combine with <number>
- This is a test. This is a second sentence. This is third sentence.



## Movement by Searches: delete & change
- /: search forward
- ?: search backward
- n: forward direction
- N: opposite of direction
- combine with c or d to change or delete: d?move: POWERFUL

### search & delete & change inline
- fx: find 'x' in line
- Fx: find 'x' backward in line
- tx: to 'x' in line
- Tx: to 'x' back in line
- ';': continues
- ',': opposite search
- combine with delete & change: dfc, cfc, vfc, ...

### search and replace
- :s/old/new/g	single line
- :%s/old/new/g all occurrences
- :s/old/new/gi casesensitive
- :s/old/new/gic confirmation
- :s/<old>/new/gic only word "old"



## Movement by lines number
- <number>G: to number of line
- :set nu or :set nonu : turn on and off
- Use `` to back the original position
- '': to the original line


# Beyond the basic
- About pattern: c/pattern, d/pattern, y/pattern
- cn, dn, yn: all

## Advanceing to a specific place
$ vim -c n <file>
- open file at number <n>
$ vim -c /pattern file
- open file at the first occurrence of pattern (-c: command)
$ vim + file
- open file at the last line
- `:!mkdir -p %:h`: create new folder and file
-- this is comment

- nvim -c /HERE <filename>: open to specific place.
- vim -R <file>
- view <file>: open in readonly
- vi -r <filename>: restore wrap

## Recovering deletion
- "2p: second to last deletion: then combine 'u' and '.' to select correct
- we have 9 deletion
- the pattern look like that: "1pa.u.u.u 

## Yanking nameed register
- "ayy: yanking to a then "ap: to use
- "d7yy: yanking then use: "dp to use
- "Ayy: with capital letter to append text



## Marking place
- m<letter>: mark new place
- 'x or `x to exactly or first character of line.

# The ex editor
- use: to move ex editor from vim
- :2m1: move line 2 under 1
- :1,2d: delete line 1 & 2
- :2,5co7: copy line 2 to 5 then put under line 7

## Line addressing number
- .: for current line
- $: for the last line
- %: for every line
- :.,$d: delete from current to last line.
- :%d: delete all line
- :%t$: duplicate file

can combine with + and - like that
- -,+d: delete 3 lines

## Search pattern
- :/pattern/d: delete line with pattern
- :/pattern/+d: delete next line from pattern
- :.,/pattern/m23:
- :/pattern1/pattern2/d 

## Redefining current line
- :100; +3 p: print line 100 to 103

## Saving
- :w %.new
- 200, 300w newfile: save part of file
- 350,$w >> newfile: append to newfile

## read file
:r filename
:12r filename -> insert file to line 12

## Edit multi file
- nvim filename{1..10}
- `:args`: to show file in edit
- Can use :next | :n | :prev | :last | :args | :rew | to control
- Can call other file to edit:   :e <filename>
- '%' can use current file
- '#' alternate filename. We can switch two file use ':e #'
- Switch back two file edit: 'CTRL + ^'
- ':e!' can discard all edit -> to last save

# Global replacement
1. The substitute command
- `:s/old/new/` : substitute old to new
- `:s/old/new/g`: global
- `50,100s/old/new/g` : search line 50 to 100
- `1,$s/old/new/g`  or `:%s/old/new/g` search entire file
- can use `g` then `ctrl + a` to increase number.

2. Confirming Substitutions
- confirm with /c then: `l`: for last, `q`: quit
- c-e: scroll up
- c-y: scroll down
- `n`: repeat last search. Combine with `cw` to change word
- `.`: repeat last command

3. Doing thing across the files
- `:g/pattern command` use this. or combine with `s`
- `:g/# FIXME/s/FIXME/DONE`

4. Context-Sensitive Replacement
- `:%s/editer/editor/g`     use this for global
- `:g/pattern/s/old/new/g` fisrt `g` is global file. second `g` is global on that line: POWERFUL

5. Pattern-Matching rules
- `.` any single character without newline
- `*` repeat none or more
- `+` repeat one or more
- `^` begining of the line
- `$` end of the line
- `\` treat the special character next
- `[]` match one of character inside, range,....: has there special case `-`, `]` and `\`. `^` put begining inside mean `not`
- Can use () for buffer 1,... then use it: `:g/\(t.*n\) \(use\)/s//\2 \1/c`  POWERFUL
- `\>`: match only the end
- `\<`: match only the beginning
- `&` replace with enrite text matched: `:s/daniel/& tran/` replace by daniel tran
- `~` replace the string in the `last command`. 
    + `:s/this/that` the first command then
    + `:s/this/~` can use in the second command.
    + `:/hello` then `:~` can change to `that`
- \u, \l, \U, \L, \e, \E: upper & lowercase. `:s/\(this\)/\U\1` change to THIS
- `:s` can use as the last command POWERFUL
- `:&` or `:%&g` can repeat the last substitution
- `:%s;/user1/tim;/home/tim;g` can use as delimiter

6. pattern-matching example
- `:%s/\<child\>/&ren/g`    replace child by children
- `:g/<syntax>/.,/<descrtiption>/-1 m /<parameter>/-1 --> FIXME
- `:g/^$/d` delete all empty line
- `:g/^[ tab]*$/d` delete all empty line inclue (space or tab)
- `:%s/^  *//` or delete all leading space
- `:%s/  *$//` delete all ending space
- `:g/^[[:digit:]]/m$` move all line with number in begining of line to the end of file
- `1,3g/^/300t$` copy 3 time2 line 300 to the end of file

7. a final look at pattern matching
` :/^Part 2/,/^Part 3/g /^Chapter/ .+2w >> begin | +t$`: can use `|` to do other command

# Advanced editing
1. Customizing
- Show all options are `:set all`
- Or command `set` : look for
5. Exec Unix commands
- `:r !command` can have result in your file.
- `so` cand use as `source`

2. Saving commands
    a. Word abbreviation
    - :ab <key> <phrase>
    - ex: :ab chxh cong hoa xa hoi
    - unset using comand: :unab <key>
    - show all: `:ab` 

    b. Map command
    - `:map <key> <phrase>` 
    c. Mapping with a leader
    - `:map <leader>X :q<cr>`   use leader key is X
    - set leader key by: `:let mapleader='X'`

    d. interpretation by ex
    e. Example
3. Using ex Scripts
4. Editing Program source code


# Vim improve
## Extended Regular Expression
1. In visual mode
- n iw/aw: select wordk
- n is: select sentence
- n ip: select paragragh
- vi{: select inside {}
- viw or viW is powerful
- va{: select all {}
- use `yi[` to copy inside `[` then use `o` to jump first and end of visual

2. In search pattern
- `\|` mean `or`: `house \| IDE`
- `\$` mean a 'concact'. foobeep\&... matches foo in foobeep, and .*Peter\&.*Bob matches in a line containing both Peter and Bob.
- `\+` match one or more. the same as `*` match nothing or more
- `\?` or `\=` or ? is match one or zero
- `\{m,n}` : repeat n-m times
- `\{,n}`: repeat as much as 0 to n times
- `\{n,}`: repeat at least n times
- `:help regexp` Include all of this POWERFUL


# Graphical Vim
# Multiple Windows in Vim
## Opening window
- `:[n]split [++opt] [+cmd] [file]`
- `:vsplit <file>` or `:split <file>` cansplit window
- or we can use `CTRL + W_S` or `CTRL + W_CTRL + S` or `CTRL + W_SHILF + S`: split
- or we can use `CTRL + W_V` or `CTRL + W_CTRL + V`: vsplit
## Moving window
- Use `CTRL+W` then `J H K L B N P`
### Moving and change layout
- Use `CTRL + W` then `SHIFT + J H K L T`
- Then use `X` for swap
### resize Window
- Use `CTRL + W` then: `-` `+` or `=`
- or `<` `>` or `|`

### buffer and their interaction with windows
- `:ls` or `:ls!` to show buffers
- `:windo cmd` exp: `:windo %s/buffer/BUFFER/g` can change in all buffer <POWERFUL>
- `:buffer <number>`: open buffer
- `:b <number>`: open buffer
- `ctrl+n/p` to auto complete word

### Closing and Quiting Window
- It is quit, close, hide
- `ctrl-w` then 'q'
- `ctrl-w` then 'c'
- `ctrl-w` then 'h' or 'o'

# Vim enhancements
- Use `:mkview` and `:loadview` to preserve folds between sessions
## The folad command <POWERFUL>
### Manual folding
- turn on: `:set foldenable`

- What you see what you fold
- turn on: `zo`
- close fold: `zc`
- set foldcolumn `:set foldcolumn=3` 
- `~~` or `g~~`: turn on CAP all line
- Use `indent` to control fold:
    + `:set foldmethod=indent`
    + `:set foldlevel=0`
    + can use `zr` and `zm` to control  
- Use << or >> or =ap to indent
- Use `<nj` or `>nj` to indent multi line


## Scripts
- `colorscheme <color>`
- <color>: desert, morning, shine, evening 
