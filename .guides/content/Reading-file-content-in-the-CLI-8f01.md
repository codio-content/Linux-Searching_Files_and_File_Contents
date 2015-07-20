## Introducing the `cat` command

As we have experienced, Codio provides the interface to open, edit and read files by clicking on them directly from the file tree on the left. However, other development enviroments may not be as friendly as Codio's. 

Lets read the _file-list.txt_ content by executing the following command. 

__TIP__: Try using the _tab autocompletion_ shortcut:

```
cat file-list.txt
```

After executing the aforementioned command, it may seem that we are executing the `ls -al` command on the _workspace_ directory, but is the content of the _file-list.txt_ file what we are actually seeing.

Try overwriting the _file-list.txt_ content, executing `cat` afterwards and then do a `ls` command:

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