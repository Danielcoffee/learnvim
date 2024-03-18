# This is LUA


# Basic
- Trick for command:
--[[
this is for command
--]]

## Booleans
- a and b:
+ false: operand
+ else: the second

- a or b:
+ true: first
+ else: second 

- Useful idiom: x = x or v
- if not x then x = v end

- not equal
if 4 ~= 5 then x = 5 end

- undertand local and global scope
- use require("string") for call file
- 

### for loop

for i=1,#fruit do
print(fruit[i])
end
- table.remove(fruit, 2)
- fruit[1] = "hello"
### use ipairs

for i,v in ipairs(fruit) do
print(i,v)
end

## Chapter 3: Number
- math.random(n) or math.random(m,n)
- math.floor(2.3)
- math.ceil(3.3)
- math.modf(2.3)
- math.tointeger(n) can convert to integer or nil

## Chapter 4: String
- print("helloo" .. "Daniel")
- change string part
a = "one string"
b = string.gsub(a, "one", "two")
- length of string use denote `#` 


## Chapter 5: Table
- fruit = {"banana", "kiwi"}
- table.insert(fruit, "pomelo")
## Chapter 6: Function
## Chapter 7: External
## Chapter 8: Fill some gaps



# Real program
## Chapter 9: Closures
## Chapter 10: Pattern
## Chapter 11: FrequentWords
## Chapter 12: Date & Time
## Chapter 13: Bit & Bite

# Lua isms

# The C API

