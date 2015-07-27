## Putting content from different inputs into a file

We've learned that the `>` character redirects the _stdout_ to a file creating it if the file does not exist and overwriting it if it does.

By contrast, the `>>` utility concatenates content to a file, either from the CLI itself or from existing file content.

__Append text to the *hi.txt* file:__

```
# Add the \n line break, don't forget the -e option
echo -e "\nMy name is ET." >> hi.txt
```

__Concatenate or append the *hi.txt* file content to the *hello.txt* content:__

```
# Notice the file names order
cat hi.txt >> hello.txt
```

Open the _hello.txt_ file to see the changes and open the _hi.txt_ file to confirm that the content is still there too. 

|||definition
### Command: 

```
cat <stdin> >> <stdout>
```
__Definition:__ The `cat` command can also append standard inputs into the given _stdout_ file name by adding the `>>` output redirection utility.

Standard inputs or _stdin_ for short can be text strings or files with content specified by its name.
|||