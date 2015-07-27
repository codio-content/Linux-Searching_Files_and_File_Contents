## Looking for content

If you can search for files and directories' information patterns, you can find content patterns as well.

|||definition
### Command: 

```
grep <option> <pattern> <file or directory>
```

__Definition:__ The `grep` utility searches any given input files, selecting lines that match one or more patterns. 

Each input line that matches at least one of the patterns is written to the standard output.
|||

### Perfecting our search patterns

The `grep` command returns content within the specified files that matches _regular expressions_ or _regex_ for short.

In order to master _regexps_ a whole course may need to be designed, however, it is easy to get started with simple patterns. 

Compare the output of the following command line with the content of the _hello.txt_ file:

```
grep 'world' hello.txt
```

The _stdout_ excluded several lines of the _hello.txt_ file content. Specifically the lines that do not contain the word: _world_