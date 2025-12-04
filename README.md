<div align="center">

# 🚀 Xiric Programming Language

**A Modern, Educational Programming Language Built from Scratch**

[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](LICENSE)
[![Python](https://img.shields.io/badge/python-3.6+-blue.svg)](https://www.python.org/downloads/)

[Features](#-features) • [Installation](#-installation) • [Quick Start](#-quick-start) • [Documentation](#-documentation) • [Examples](#-examples) • [Contributing](#-contributing)

</div>

---

## 📖 About

**Xiric** is a fully-featured, dynamically-typed programming language designed as an educational project to explore the internals of programming language design. Built entirely in Python, Xiric includes a complete lexer, parser, and tree-walk interpreter, demonstrating fundamental compiler and interpreter concepts.

While Xiric is an educational project, it's a remarkably capable language with:
- **Rich data types**: integers, floats, strings, and lists
- **Control flow**: conditional statements, loops (for/while), and functions
- **Extensive built-in library**: 30+ built-in functions for math, strings, file I/O, and more
- **First-class functions**: define and pass functions as values
- **Dynamic typing**: variables don't need type declarations

## ✨ Features

### Core Language Features
- ✅ **Complete lexical analysis** with position tracking and error reporting
- ✅ **Robust parser** generating abstract syntax trees (AST)
- ✅ **Tree-walk interpreter** with runtime error handling
- ✅ **Rich data types**: integers, floats, strings, lists
- ✅ **Arithmetic operations**: `+`, `-`, `*`, `/`, `%`, `//`, `^` (power, modulo, floor division)
- ✅ **Compound assignments**: `+=`, `-=`, `*=`, `/=`, `%=`
- ✅ **Comparison operators**: `==`, `!=`, `<`, `>`, `<=`, `>=`
- ✅ **Logical operators**: `and`, `or`, `not`
- ✅ **Variables**: mutable bindings with `set` keyword
- ✅ **Conditionals**: `if`/`elif`/`else` statements
- ✅ **Loops**: `for` and `while` with `break`/`continue` support
- ✅ **Functions**: first-class functions with closures
- ✅ **Lists**: dynamic arrays with indexing and manipulation
- ✅ **Comments**: line comments with `#`

### Built-in Functions (30+)

#### I/O Functions
- `print(value)` - Print value to console
- `show(value)` - Return string representation
- `input()` - Read string from user
- `input_int()` - Read integer from user

#### Math Functions
- `sqrt(n)` - Square root
- `abs(n)` - Absolute value
- `floor(n)`, `ceil(n)`, `round(n)` - Rounding functions
- `sin(n)`, `cos(n)`, `tan(n)` - Trigonometric functions
- `min(list)`, `max(list)` - Find minimum/maximum in list

#### String Functions
- `upper(str)`, `lower(str)` - Case conversion
- `split(str, delim)` - Split string into list
- `join(list, delim)` - Join list into string
- `replace(str, old, new)` - String replacement

#### Type Conversion
- `to_int(value)` - Convert to integer
- `to_float(value)` - Convert to float
- `to_str(value)` - Convert to string

#### List Operations
- `append(list, value)` - Add element to list
- `pop(list, index)` - Remove and return element
- `extend(listA, listB)` - Merge two lists
- `len(list)` - Get list length
- `range(start, end)` - Create range of numbers

#### Type Checking
- `is_num(value)`, `is_str(value)`, `is_list(value)`, `is_fun(value)`

#### File I/O
- `read_file(filename)` - Read file contents
- `write_file(filename, content)` - Write to file

#### Utilities
- `clear()` / `cls` - Clear console
- `run(filename)` - Execute another Xiric file

### Built-in Constants
- `null` - Null value
- `true` / `false` - Boolean values
- `math_pi` - Value of π (pi)

## 🔧 Installation

### Prerequisites
- Python 3.6 or higher

### Setup

1. **Clone the repository:**
```bash
git clone https://github.com/jai-git4208/Xiric.git
cd Xiric
```

2. **Run the interactive shell:**
```bash
python3 shell.py
```

Or run a Xiric script file (`.xrc` extension):
```bash
# On Unix/macOS
./run-language.sh yourfile.xrc

# On Windows
run-language.bat yourfile.xrc
```

## 🚀 Quick Start

### Interactive REPL
Launch the interactive shell to experiment with Xiric:

```bash
python3 shell.py
```

```
Xiric v1.0
>>> set x = 10
10
>>> set y = 20
20
>>> x + y
30
>>> print("Hello, Xiric!")
Hello, Xiric!
null
```

### Your First Script

Create a file `hello.xrc`:

```xrc
# hello.xrc - Your first Xiric program

set name = input()
print("Hello, " + name + "!")
```

Run it:
```bash
./run-language.sh hello.xrc
```

## 📚 Documentation

### Variables

Use `set` to declare and assign variables:

```xrc
set x = 42
set name = "Xiric"
set numbers = [1, 2, 3, 4, 5]
set pi = 3.14159
```

Compound assignment operators provide shorthand for common operations:

```xrc
set count = 10
count += 5      # count = count + 5  →  15
count -= 3      # count = count - 3  →  12
count *= 2      # count = count * 2  →  24
count /= 4      # count = count / 4  →  6
count %= 4      # count = count % 4  →  2
```

### Arithmetic

```xrc
set a = 10 + 5      # Addition: 15
set b = 20 - 8      # Subtraction: 12
set c = 4 * 7       # Multiplication: 28
set d = 100 / 4     # Division: 25.0
set e = 17 % 5      # Modulo (remainder): 2
set f = 17 // 5     # Floor division: 3
set g = 2 ^ 10      # Exponentiation: 1024
```

Practical example using modulo and floor division:
```xrc
# Check if a number is even
set num = 42
if num % 2 == 0 do
    print("Even!")
end

# Calculate pages needed
set total_items = 47
set per_page = 10
set pages = (total_items + per_page - 1) // per_page  # Ceiling division
print(pages)  # 5
```

### Conditionals

```xrc
set age = 18

if age >= 18 do
    print("You are an adult")
elif age >= 13 do
    print("You are a teenager")
else do
    print("You are a child")
end
```

### Loops

**For Loop:**
```xrc
# Print numbers 0 to 9
for i = 0 to 10 do
    print(i)
end

# With custom step
for i = 0 to 20 by 2 do
    print(i)  # Prints even numbers
end
```

**While Loop:**
```xrc
set count = 0
while count < 5 do
    print(count)
    set count = count + 1
end
```

### Functions

**Define a function:**
```xrc
define greet(name) -> do
    print("Hello, " + name + "!")
end

greet("World")
```

**With return value:**
```xrc
define add(a, b) -> a + b

set result = add(10, 20)
print(result)  # 30
```

**Anonymous functions:**
```xrc
set square = define(x) -> x * x
print(square(5))  # 25
```

### Lists

```xrc
# Create a list
set fruits = ["apple", "banana", "orange"]

# Access elements
print(fruits[0])  # apple

# Modify list
append(fruits, "grape")
print(len(fruits))  # 4

# Remove element
set removed = pop(fruits, 1)
print(removed)  # banana
```

### String Manipulation

```xrc
set text = "Hello World"

set uppercase = upper(text)
print(uppercase)  # HELLO WORLD

set words = split(text, " ")
print(words)  # ["Hello", "World"]

set replaced = replace(text, "World", "Xiric")
print(replaced)  # Hello Xiric
```

### Math Operations

```xrc
set value = -42
print(abs(value))  # 42

set num = 3.7
print(floor(num))  # 3
print(ceil(num))   # 4
print(round(num))  # 4

# Trigonometry (radians)
print(sin(math_pi / 2))  # 1.0

# Min/Max
set numbers = [5, 2, 8, 1, 9]
print(min(numbers))  # 1
print(max(numbers))  # 9
```

### File I/O

```xrc
# Write to file
set content = "Hello, Xiric!"
write_file("output.txt", content)

# Read from file
set data = read_file("output.txt")
print(data)
```

### Type Conversion

```xrc
set str_num = "42"
set num = to_int(str_num)
print(num + 8)  # 50

set pi = to_float("3.14159")
print(pi * 2)  # 6.28318

set value = to_str(123)
print("Number: " + value)
```

## 💡 Examples

### Example 1: Fibonacci Sequence

```xrc
define fibonacci(n) -> do
    if n <= 1 do
        return n
    end
    return fibonacci(n - 1) + fibonacci(n - 2)
end

for i = 0 to 10 do
    print(fibonacci(i))
end
```

### Example 2: Prime Number Checker

```xrc
define is_prime(n) -> do
    if n <= 1 do
        return false
    end
    
    for i = 2 to n do
        if i * i > n do
            break
        end
        
        if n / i == floor(n / i) do
            return false
        end
    end
    
    return true
end

set num = to_int(input())
if is_prime(num) do
    print(to_str(num) + " is prime")
else do
    print(to_str(num) + " is not prime")
end
```

### Example 3: Word Counter

```xrc
define count_words(text) -> do
    set words = split(text, " ")
    return len(words)
end

set text = "The quick brown fox jumps over the lazy dog"
set count = count_words(text)
print("Word count: " + to_str(count))  # Word count: 9
```

### Example 4: List Processing

```xrc
# Create a list of squares using range
set numbers = range(1, 11)
set squares = []

for i = 0 to len(numbers) do
    set num = numbers[i]
    append(squares, num * num)
end

print(squares)  # [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
```

### Example 5: Temperature Converter

```xrc
define celsius_to_fahrenheit(celsius) -> do
    return (celsius * 9 / 5) + 32
end

define fahrenheit_to_celsius(fahrenheit) -> do
    return (fahrenheit - 32) * 5 / 9
end

print("Enter 1 for C to F, 2 for F to C:")
set choice = input_int()

if choice == 1 do
    print("Enter temperature in Celsius:")
    set temp = to_float(input())
    set result = celsius_to_fahrenheit(temp)
    print(to_str(result) + " °F")
elif choice == 2 do
    print("Enter temperature in Fahrenheit:")
    set temp = to_float(input())
    set result = fahrenheit_to_celsius(temp)
    print(to_str(result) + " °C")
end
```

## 🎯 Language Syntax Reference

### File Extension
- `.xrc` → Xiric source code files

### Keywords
```
set      and      or       not      if       elif     else
for      to       by       while    define   do       end
return   continue break
```

### Operators
```
Arithmetic:       +  -  *  /  %  //  ^
Comparison:       ==  !=  <  >  <=  >=
Logical:          and  or  not
Assignment:       =  +=  -=  *=  /=  %=
Arrow:            ->
```

Where:
- `%` is modulo (remainder after division)
- `//` is floor division (division rounded down to nearest integer)
- `^` is exponentiation (power)
- `+=`, `-=`, `*=`, `/=`, `%=` are compound assignment operators

### Comments
```xrc
# This is a single-line comment
```

## 🏗️ Architecture

Xiric follows a classic interpreter architecture:

1. **Lexer** (`Lexer` class): Tokenizes source code into a stream of tokens
2. **Parser** (`Parser` class): Builds an Abstract Syntax Tree (AST) from tokens
3. **Interpreter** (`Interpreter` class): Walks the AST and executes the program

```
Source Code (.xrc)
       ↓
   [Lexer]
       ↓
    Tokens
       ↓
   [Parser]
       ↓
     AST
       ↓
 [Interpreter]
       ↓
   Execution
```

## 🎓 Learning Resources

Xiric is designed to be educational. Key concepts demonstrated:

- **Lexical Analysis**: Tokenization, position tracking, error reporting
- **Parsing**: Recursive descent parsing, operator precedence, AST construction
- **Interpretation**: Tree-walk interpretation, environment/symbol tables
- **Type Systems**: Dynamic typing, runtime type checking
- **Memory Management**: Variable scoping, closures
- **Error Handling**: Compile-time and runtime error detection

## 🐛 Error Handling

Xiric provides detailed error messages with line and column information:

```xrc
>>> set x = 10 +
Invalid Syntax: Expected int, float, identifier, '+', '-', '(', '[', 'if', 'for', 'while', 'define' or 'not'
File <stdin>, line 1

set x = 10 +
           ^
```

## 🗺️ Roadmap

Future enhancements planned for Xiric:

- [ ] Dictionary/hash map data structure
- [ ] Modulo (`%`) and floor division (`//`) operators
- [ ] Compound assignment operators (`+=`, `-=`, etc.)
- [ ] Try/catch error handling
- [ ] Import/module system
- [ ] Class/object-oriented programming support
- [ ] Standard library modules (random, datetime, etc.)
- [ ] Bytecode compiler and VM
- [ ] JIT compilation

## 🤝 Contributing

Contributions are welcome! This is an educational project, and improvements help everyone learn.

### How to Contribute:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Areas for Contribution:

- New built-in functions
- Performance optimizations
- Bug fixes
- Documentation improvements
- Example programs
- Test coverage

## 📄 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

Created by **Jaimin Pansal** ([@jai-git4208](https://github.com/jai-git4208))

## 🙏 Acknowledgments

Xiric was inspired by:
- [Crafting Interpreters](https://craftinginterpreters.com/) by Robert Nystrom
- [Writing An Interpreter In Go](https://interpreterbook.com/) by Thorsten Ball
- The classic Dragon Book (Compilers: Principles, Techniques, and Tools)

## 📧 Contact & Support

- **Issues**: [GitHub Issues](https://github.com/jai-git4208/Xiric/issues)
- **Discussions**: [GitHub Discussions](https://github.com/jai-git4208/Xiric/discussions)

---

<div align="center">

**⭐ Star this repo if you find it helpful!**

Made with ❤️ and Python

</div>
