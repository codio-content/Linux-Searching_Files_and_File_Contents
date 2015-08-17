|||definition
### The pipe `|` character
__Definition:__ The pipe character allows us to input multiple commands at once by _passing the output of a command to another command_.

#### Background:
GNU/Linux, the technology over which the Codio terminal is running (you must not confuse it with _Bash_ which is the program running on the terminal) was designed to simultaneously run commands that perform small and specific tasks that result in more complex tasks.
|||

Let's understand this concept by performing a `grep` command for searching over the `ls` command output:

```
# On your ~/workspace folder:
ls -l | grep 'hello'
```

Instead of getting the complete `ls -l` files and directories details list, we are filtering the output to be only: 

```
-rw-rw-r-- 1 codio codio 51 Jul 20 19:06 hello.txt
```

Meaning that the `|` pipe character connected the results of the `ls -l` command which is text printed in the CLI, with the `grep` command functionality which is looking for text patterns.