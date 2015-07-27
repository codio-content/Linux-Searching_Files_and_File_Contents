The `grep` command becomes very useful when working with the CLI. 

Here are more examples of `grep`'s practical usage:

__Display only filenames:__

```
# Outputs only the filenames with the 'world' world on it
grep -l 'world' *.txt
```

__Combine the only filenames option with the case-insensitive option:__

```
grep -il 'hello' *.txt
```

__Show matching line numbers:__

```
grep -n 'world' hello.txt
```

__Show lines before your grep pattern match:__

```
# Show 2 lines -B efore the word: 'ET' 
grep -B2 'ET' hello.txt
```

__Show lines after your grep pattern match:__

```
# Show 2 lines -A fter the starting line with 'hi' 
# case-insensitive plus line-numbers
grep -A2 -ni '^hi' hello.txt
```