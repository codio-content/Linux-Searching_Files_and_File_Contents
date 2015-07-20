## Different ways of `find`ing files

Click on the terminal an execute these commands to see the results printed

__Find the _hello.txt_ file location by name:__

```
# Source path is the /home/codio/ directory
find ~/ -name "hello.txt"
```

__Find the _hello.txt_ file location by a simple pattern match:__

```
# Put the pattern to match inside 2 asterisks
find /home -path "*hello*"
```

__Find files location by size in the `.` current directory:__

```
# The '+' operator indicates greater than. 
find . -size +51
```

__Find files by modification time:__

```
# The '-' operator indicates value between
# In this case find between 'one day ago'
find . -mtime -1 
```

__Ready? Find in the current directory - only within a *max depth* directory level of 1 - exclude _directory type_ - exclude files that begin with a `/.` dot - print the results to a found.txt file:__

```
find . -maxdepth 1 -mtime -1 -not -type d -not -path "*/\.*" > found.txt
```