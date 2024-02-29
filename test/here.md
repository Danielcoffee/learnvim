You can type here
every thing okie?
ometimes, halfway through a document or at the end of a draft, me may recognize inconsistencies in the
way that me refer to certain things
. Or, in a manual, some product whose name appears throughout me file is suddenly renamed 
(marketing!). 
Often enough it happens that me have to go back and change what you’ve already written, and me need to make similar or identical changes in several places.

nges is with a powerful feature called global 
replacement. With one command me 
can automatically replace a word (g
or a string of characters) wherever it occurs in the file.

In a global replacement, the 
ex editor checks each line of a file for a given pattern of characters. 
On all lines that the pattern is found, ex replaces the pattern with a new string of characters. 
For right now, we’ll treat the search pattern as if it were a simple string; later in the chapter we’ll look at the powerful pattern-matching language known as regular expressions.

Global replacement really uses two ex commands: :g (global) and :s (substitute). 
Since the syntax of glo
