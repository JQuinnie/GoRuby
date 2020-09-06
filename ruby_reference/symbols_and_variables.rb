# A symbol has nothing to do with variables, it is more like a string
# strings are used to work with data while a symbol is more like an identifier

:symbol

# symbols are immutable, every symbol is unique and can't be changed

# You should use symbols as names or labels for things (like methods) & use strings when you care more about the data (individual characters)

# change a symbol to a string
:symbol.to_s

#change a string to a symbol
'string'.to_sym

# create an array of symbols
symbols = %i(a b c)

# create an array of strings
strings = %w(a b c)

# in Summary
# Symbols are immutable
# Symbols are not pointer to values, they are values themselves
# Strings are for data & symbols are for identity

# variables
# +------------------+----------------------+
# | Name Begins With |    Variable Scope    |
# +------------------+----------------------+
# | $                | A global variable    |
# | @                | An instance variable |
# | [a-z] or _       | A local variable     |
# | [A-Z]            | A constant           |
# | @@               | A class variable     |
# +------------------+----------------------+

# @variables are called instance variables in ruby. Which means you can access these variables in ANY METHOD inside the class. [Across all methods in the class]
# Variables without the @ symbol are called local variables, which means you can access these local variables within THAT DECLARED METHOD only. Limited to the local scope.
