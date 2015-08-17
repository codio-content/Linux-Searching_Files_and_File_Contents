## Redirecting the _stdout_ 

To better understand this concept, let's change the standard output (or _stdout_ for short) from being a string printed on a new line in the terminal, to be printed in a new file.

Make sure you are on the `~/workspace` folder and execute:

```
echo 'Hello world!' > hello.txt
```

|||info
You should be seeing a new _hello.txt_ file on the file tree with the 'Hello world!' string on line 1. 

Refresh the file tree if it does not appear.
Do so by clicking on the _refresh icon_ on the bottom-right part of the file tree pane or by clicking on: _Project > Resync File Tree_.
|||
 
Let's understand the structure of these new bash instructions:

1. The `echo` command gets a string argument _‘Hello world!’_. This first argument is also called _standard input_ (or _stdin_ for short)
2. The `>` character or _stdout redirection utility_ changes the _stdout_ to be a file with the specified name