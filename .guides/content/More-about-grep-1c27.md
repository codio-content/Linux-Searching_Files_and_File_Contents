The `grep` command becomes very useful when working with the CLI. 

Here are more examples of `grep`'s practical usage:

__Display only filenames:__

```
# Outputs only the filenames with the 'world' world on it
grep -l 'world' *.txt
```

__Combine the _only-filenames_ option with the case-insensitive option:__

```
grep -il 'hello' *.txt
```

__Show matching line numbers:__

```
grep -n 'world' hello.txt
```

__Show lines before your grep pattern match:__

```
grep -B2 'ET' hello.txt
```

__Show lines after your grep pattern match:__

```
# '-ni' case-insensitive plus line-numbers
grep -A2 -ni '^hi' hello.txt
```

__Get the differences between the content of two or more files:__

```
# -F interprets fixed patterns, need to match exactly
# -x matches entire lines
# -v selected lines are those not matching any of the specified patterns
# -f read one or more newline separated patterns from file
grep -Fxvf hi.txt hello.txt
```