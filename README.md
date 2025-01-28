# Shell Scripting Bug: Unquoted Variable Expansion

This repository demonstrates a common and subtle bug in shell scripting related to unquoted variable expansion in string concatenation. The bug arises when variables containing spaces are concatenated without proper quoting, leading to unexpected output.

## Bug Description
The script `bug.sh` illustrates the issue.  When concatenating variables containing spaces, the script's output differs from the expected result due to word splitting. This can introduce subtle and hard-to-find errors in shell scripts, especially in more complex scenarios.

## Bug Solution
The solution, demonstrated in `bugSolution.sh`, involves properly quoting the variables to prevent word splitting during string concatenation.