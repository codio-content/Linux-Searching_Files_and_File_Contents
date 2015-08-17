## Introducing the `cat` command

As you have experienced, Codio provides the interface to open and read files by clicking on them directly from the file tree. However, other development enviroments may not be as friendly as Codio's. 

Let's __read the *file-list.txt* content__ by executing the following command. 

__TIP__: Try using the _tab autocompletion_ shortcut:

```
cat file-list.txt
```

|||definition
### Command: `cat <stdin>`
__Definition:__ The `cat` command prints file content to the _stdout_.
|||

After executing the aforementioned command, it may seem that we are executing the `ls -alhF` command on the _workspace_ directory, but is the content of the _file-list.txt_ file what we are actually looking at.

Try overwriting the _file-list.txt_ content with a simple `ls` command, executing `cat` afterwards and then do a `ls` command to see the differences of the output:

```
codio ~/workspace $ ls > file-list.txt
codio ~/workspace $ cat file-list.txt
file-list.txt  
hello.txt  
hi.txt
project-log
codio ~/workspace $ ls
file-list.txt  hello.txt  hi.txt project-log
```

Notice that the `>` utility outputs one item by line, while the `ls` command outputs the items as a horizontal list.