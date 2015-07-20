## Printing useful information

The `>` utility can be very helpful when requiring to get common outputs printed to a file instead of being printed to the CLI.

Lets redirect the _stdout_ of the `ls` command to be written in a new file. 

On your `~/workspace` folder execute:

```
ls -alhF > file-list.txt
```

Open the _file-list.txt_ file to see what's been printed on it: 

```
total 16K
drwxr-xr-x  5 codio codio  114 Jul 20 06:53 ./
drwxr-xr-x 22 codio codio 4.0K Jul 14 05:18 ../
-rw-rw-r--  1 codio codio    0 Jul 20 07:38 file-list.txt
drwxr-xr-x  8 codio codio  155 Jul 14 05:10 .git/
drwxr-xr-x  4 codio codio   50 Jul 20 06:48 .guides/
-rw-rw-r--  1 codio codio   13 Jul 20 06:11 hello.txt
-rw-rw-r--  1 codio codio   20 Jul 20 07:32 hi.txt
drwxrwxr-x  2 codio codio   28 Jul 20 07:07 project-log/
-rw-rw-r--  1 codio codio 1.1K Jul 20 05:23 .settings
```

### What do the `ls` command options mean?

You are already familiar with the `-a` option to print hidden _dotfiles_, the `-l` option to print files and directories in a vertical list with details and we are introducing 2 more options: 

1. `ls -h` to print file sizes in a human readable form. Meaning that it uses the _k_ suffix for _kilobytes_, _m_ for _megabytes_ and so on.
2. `ls -F` to add a forward slash `/` to directories and other symbols to distinguish between normal and special files