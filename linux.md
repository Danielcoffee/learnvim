# Command Line
# Getting Started
## File & directories
- commondly used class
- [:alnum:]
- [:alpha:]
- [:digit:]
- [:lower:]
- [:upper:]

5. Working with command
- type <command>: display command type
- which <command>: display executable location
- apropos <command>: display apropriate search
- whatis <command> : brief discription about the command
- infor <command>: lot of real information

6. Redirection
:wq
# Configuration and the enviroment
# common task and essential tools
# writing shell script


## Start
### Gnome 3
- 'alt + `': select multi app
- alt + f2: run a command
-       

## Linux desktop

# Power User
## Shell
- echo $PATH: path to variable: run left to right.
- can add your command to /home/<name>/.local/bin
- type -a <command name>: locate where command.
- locate <command name>: locate where command.
- open .bashrc then "set -o nvim" to use nvim edit command line
faf

### Commandline editing
1. Navigating
- c-f: go forward one character
- c-b: go backward
- alt-f: go forward one word
- alt-b: go backward one word
- c-a: begining of the line
- c-e: end of the line
- c-l: clear screen

2. Editing
- c-d: delete current word
- c-t: switch character
- a-t: switch word
- a-u: uppercase word
- a-l: lower case word
- a-c: capitalize word
- c-v + <special character>: insert special character

3. Cut & Paste
- c-k: cut to the end
- c-u: cut to beginning
- c-w: cut period word
- a-d: cut next word
- c-y or a-y: paste most recently cut word
- c-c: delete whole word

### history
- history <number>. then run '!<number>' to choice
- Use c-n and c-p to choice command
- Use alt-p or c-r: to search reverse command
- Use fc <number> run command
- fc -e vi: set default editor

### Change default editor
- sudo update-alternatives --config editor
- then choice by number

### Sequential command
- Can separate with ';'
- ex: date; ls; date

### Information about command
- help | less <command>
- <command> --help | less
- info <command>
- man <command>: read section 2 & 3
- ex: man 5 date


## 4. File systems
- check permission: ls -ld <filename>
- chmod 700 <name> change permission

### Using metacharacters and operator
- *: for any character
- ?: for one character
- [...]: for one of character
- [a-g]: a range character
 
1. Using file-redirection metacharacter
- <: direct content to command
- >: direct content
- 2>: error conent
- &>: standard & error to file
- >>: append content to file
- <<text: append text

2. Using brace expansion character
- ex: touch memo{1,3,4,5}
- touch {a..d}{1..4}: create a range files

### Chmod
- r=4, w=2, x=1 --> full=7, none=0
- [d,_,...]ower-group-other
- ex: 700, 755
- Can recursively: chmod -R 755 <filename>

### finding files
1. use locate
- locate -i dir_color
- locate .bashrc

2. use find
- find /etc -ls
- find /etc -name passwd
- find /etc -iname '*passwd*': iname have case sensitive

3. use grep: search file or folder
- grep desktop /etc/serveces
- grep -i desktop /etc/services `i`: case-insensitive
- `-v`: don't contain a selected string
- `r`: recursive search
- `l`: just show file of text searching
- combine with |
- ip addr show | grep inet

## Running process
- use ps
- use `top` command
+ h: helpt
+ 
## Shell scripts

1. Piping

    - ls ~ | wc -l: count how many folder and file in current folder.
    - ls /etc | less: more than single screen. use less to view. use `q` to quit.
    - cat combined.txt | uniq | wc -l: we can use `|` many times. `uniq`: work on adjacent lines
    - sort combined.txt | uniq | wc -l: sort then use uniq to remove all duplicated.

2. ls
    - ls -a: show all
    - ls -l: show more information
    - ls -lh: show more & human view
    - ls -lah: more information & human





iii
3. Tmux
- tmux new -s <name>: new session
- C-b: c: new window. we can switch other window buy <number> or N, P
- C-b: w: view widow as a list. select by "enter" 
- C-b: d: detach session from the list
- tmux attach-session -t <name>: reattach session
- tmux a: reattach
- C-b: s: view session as list
- C-b: q: show number in each pane
- c-b: o: next pane
- c-b: { or }: swap pane
- tmux ls: show list all
- tmux a -t <session name>: attach to session
- c-b then hold ctrl or alt + arrow key: change size of terminal
- c-b then: alt + 1/ 2/ 3/ 4: for default size
- c-b then ',': to rename window:
- tmux kill-sever: kill all
- c-b then &: kill window.
- nvim ~/.tmux.conf: edit tmux config

