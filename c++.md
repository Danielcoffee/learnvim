# Basic
## fundamental  
- <iostream>: input/output stream
- cout: character out << 
- cin: character in  >>
- endl: end of line
- using namespace std;
- use `const` to define variable

## data
### Built-in types & limit
- it is depend on system: use `sizeof(data)` to know the bytes
- use class: `numeric_limits<data>::min()` with #include <limits> know min & max of number.
[use this link](https://en.cppreference.com/w/cpp/types/numeric_limits)


- long long: 8byte
- long: 4byte
- for small number use 'short': -32k to 32k; 2byte
- boolean
- double
- float, char, long long, auto,..
### Numbers
- stay away from `unsigned` keyword
a. narrowing
- convert `short` to `int`:
- short number = 100;
- int another = number; or int another{number};
b. <iomanip>: use  setw(n) to set space to string
- use `left` or `right` to agline when print
- Use << fixed << setprecision(n): to fix number after '.' of float number

### Boolean values
1. Use <noboolalpha> or <boolalpha> to cout `bool` value in true or false. If not 0 & 1 will print

### Character & string
1. Char
- Use + before character --> cout number
2. String
- 
### Arrays
- int numbers[] = {10, 2};

- convert data type
- use `static_cast<data_type>(value)` for safer. example: `static_cast<int>(y)`

## decision  
1. Comparision
2. Logical
3. If statement
4. Switc jkdfjas h
5. Conditional
  dfdsflj 

## function  
## loops

# Inter
# Advanced
