## Different ways of `find`ing files

To better understand this concept, click on the terminal and execute these commands to see the results printed:

__Find the _hello.txt_ file location by name:__

```
# Source path is /home/codio/, operator is -name, argument is "hello.txt"
find ~/ -name "hello.txt"
```

__Find the _hello.txt_ file location with a simple pattern match:__

```
# Put the pattern to match inside 2 asterisks
find /home -path "*hello*"
```

__Find only file names that begin with the letter _h_ in the current directory :__

```
# ^ means: line begins with
find . -type f -name "h*"
```

__Find the location of files in the current directory that are greater in size than 51 bytes:__

```
# The '+' operator indicates greater than. 
find . -size +51
```
<small>You may specify _k_ for kilobytes, _M_ for megabytes and so on.</small>

__Find files by modification time:__

```
# The "-' operator indicates value between
# In this case find between 'one day ago'
find . -mtime -1 
```

__Getting more precise__
`find` in the `.` _current directory_ - only within a *max depth* directory level of 1 - exclude _directory type_ - exclude files that begin with a `/.` dot - print the results to a found.txt file:

```
find . -maxdepth 1 -not -type d -not -path "*/\.*" > found.txt
```

With this last example, it is clear how a file system search can get as precise as you may want it to be. 

__NOTE__: `-maxdepth 1` indicates that the `find` command is only going to search for files and directories inside the _first file-hierarchy level_.