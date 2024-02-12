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


## Undo
- Use 'u' to undo last command
- Use 'U': undo to original state.
- Use "CTRL-R": redo

## Replace
- 'p': use when after delete, will put all under the cursor
- 'r' then other key to replace character.
- 'ce': change from the end of the word
- 'cc' does the same for whole lines.


## Go to

- Type: <number>G : go to the line
- 'gg' : the first line of file
- G: end of file.

## Search command
- '/': search forward
- '?': search backward: then 'n' for next & "N" for reverse direction
- 'CTRL + i" and "CTRL + o" for back and continues.

### Find matching [, { & (

- Use '%' for this.






 
