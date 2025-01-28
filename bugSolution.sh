#!/bin/bash

# This script demonstrates the corrected approach to variable expansion in shell scripts.

var1="hello"
var2="world"

combined="${var1}${var2}"
echo "Combined: $combined"

# The issue lies in how the script handles spaces in variable values.
var3="hello world"
var4="another string"

# Corrected concatenation using proper quoting
combined2="$var3$var4"
echo "Combined2: $combined2"

# Now the output is consistent and as expected.
# Expected output: Combined: helloworld
#                 Combined2: helloworldanother string