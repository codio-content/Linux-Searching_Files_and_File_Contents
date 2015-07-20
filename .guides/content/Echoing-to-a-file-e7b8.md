## Redirecting the _stdout_ 

To better understand this concept, lets change the standard output or _stdout_ for short from being a string printed on a new line on the terminal to be printed on a new file.

Make sure you are on the `~/workspace` folder and execute:

```
echo 'Hello world!' > hello.txt
```

|||info
You should be seeing a new _hello.txt_ file on the file tree with the 'Hello world!' string on line 1.

Refresh the file tree if it does not appear.
|||

Lets understand the structure of these new _bash_ instructions: 

1. The `echo` command gets a string argument _'Hello world!'_. This first argument is also called _standard input_ or _stdin_ for short
2. The `>` character or _stdout redirection utility_ changes the _stdout_ to be a file with the specified name