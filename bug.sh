#!/bin/bash

# This script demonstrates a subtle bug related to variable expansion in shell scripts.

var1="hello"
var2="world"

combined="${var1}${var2}"
echo "Combined: $combined"

# The issue lies in how the script handles spaces in variable values.
var3="hello world"
var4="another string"

combined2="${var3}${var4}"
echo "Combined2: $combined2"

# Expected output: Combined: helloworld
#                 Combined2: helloworldanother string
# Actual output:
#                 Combined: helloworld
#                 Combined2: hello worldanother string
# The space in var3 is treated literally when concatenated within the string assignment without proper quoting.

# The unexpected behavior is caused by how Bash expands unquoted variables.
# When you use ${var3}${var4}, Bash performs word splitting before concatenation.
# The space in var3 creates a separate word, and when combined with var4, it becomes "hello world another string".

# Fixing the bug involves proper quoting:
combined3="$var3$var4"
echo "Combined3: $combined3"