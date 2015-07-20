### Different ways of `find`ing the _hello.txt_ file

Click on the terminal an execute these commands to see the results printed

__Find the _hello.txt_ file location by name:__

```
# Source path is the /home/codio/ directory
find ~ -name "hello.txt"
```

__Find the _hello.txt_ file location by a simple pattern match:__

```
# Put the pattern to match inside 2 asterisks
find /home -path "*hello*"
```

__Find the _hello.txt_ file location by size:__

```
# After doing a 'ls -l' we know that the hello.txt file has a size of 51 bytes
find /home -path "*hello*"
```