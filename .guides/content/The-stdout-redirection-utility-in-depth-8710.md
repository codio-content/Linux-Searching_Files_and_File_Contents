## What exactly is the `>` character doing?

|||definition
### Bash _stdout_ redirection utility
__Definition:__ The `>` character redirects the stdout to a file.

This bash utility creates the file specified by the argument name if not present, otherwise overwrites it.
|||

The `>` character can also be used for creating empty files, having the same effect as the `touch` command. 

Create a _hi.txt_ empty file in your `~/workspace` directory:

```
> hi.txt
```

Open the new _hi.txt_ file to confirm that it is empty and overwrite it by adding content on it: 

```
echo -e 'Hi.\nThis is world!' > hi.txt
```

__NOTE:__ The `\n` characters combination is interpreted as a _line break_ by the `echo` command. 

__The `-e` option ensures that the `\n` is not interpreted literally.__

Open the _hi.txt_ file to see the result of adding the `\n` to the string:

```
Hi.
This is world!
```