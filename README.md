Bash Scripting

 Linux Commonly used Commands for log parsing

 AWK
 Awk is powerful text-processing and pattern-scanning tool in Linux used for manipulating data and generating formatted reports. It reads files line by line, applies patterns, and performs specified actions on matching lines.

Basic Syntax
 awk [options] 'pattern {action}' input-file > output-file


findingwarninglines.sh

Script uses the awk command to match the pattern of warning and print the next 5 lines

<img width="947" height="907" alt="image" src="https://github.com/user-attachments/assets/bbc17988-252d-42e0-993a-db2fe3b9b4b8" />
