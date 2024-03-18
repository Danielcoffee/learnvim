# Memory
- Heap: like a shelf of collection memory address
- Everything in python is object
- import ctypes and use ctypes.c_long.from_address(address).value


## Dictionary
>>> dic1 = {'1': 'one', 2: 'two', 3: 'three'}
>>> dic1.values()
dict_values(['one', 'two', 'three'])
>>> dic1.keys()
dict_keys(['1', 2, 3])

## Circular references
- garage collectior

