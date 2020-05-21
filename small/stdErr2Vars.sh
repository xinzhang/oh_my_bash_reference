# But, by default, command substitution only catches the standard output(stdout). To capture stderr we need to use 2>&1 redirector.
VAR=$(cat file1.txt nofile.txt 2>&1)
echo $VAR

# To get standard errors only, we need to redirect stdout to the "/dev/null" file.
ERROR=$(cat file1.txt nofile.txt 2>&1 > /dev/null)
echo $ERROR