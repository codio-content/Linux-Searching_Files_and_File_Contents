Just as we did with the `find` command, the best way to understand the `grep` content search command is by executing some examples and analyze the output.

Make sure you are on the `~/workspace` directory and:

__Search for the word "world" in the hello.txt file:__

```
grep 'world' hello.txt
```

__Search for a string in multiple *.txt* files:__

```
# The asterisk means:
# "any file name with the txt extension inside the current directory"
grep 'world' *.txt
```

__Search for case-insensitive content:__ 

```
# Will look for: hello, Hello, HELLO, or any lowercase or uppercase combinations
# in the hello.txt file only
# Try removing the -i option
grep -i 'hello' hello.txt
```

__Look for everything except the lines that contain 'world' inside the hello.txt file:__

```
# -v reverses the meaning of a grep search
grep -v 'world' hello.txt
```

__Search for lines that begin with the 'world' word only:__

```
# The ^ regex special character means: beginning of line
grep '^world' hello.txt
```