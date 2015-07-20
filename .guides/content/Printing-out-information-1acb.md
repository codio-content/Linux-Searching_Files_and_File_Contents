## Keeping the user aware

As we've experimented on previous units, the CLI way of interacting with the user is by printing out text regarding the result of the instructions that it was given.

_Bash_, the program running in the terminal has a widely used command called that prints out information regarding the progress or the state of the given input:

|||
### Command: `echo`
__Definition:__ The `echo` _bash shell_ utility writes the result of the given inputs to the _standard output_.
|||

Lets print out the string 'Hello world!' in the CLI: 

```
# Note the use of single quotes:
echo 'Hello world!'
```

The result of the `echo` is just a _text string_ written on a new line. 

|||
### Text string

A _text string_ is a data type represented by text inside `' '` single quotes or `" "` double quotes. 

__Why didn't we use double quotes for the 'Hello world!' string?__

The _bash_ interpreter has a special behaviour when using the `!` bang character for it searches the command history plus the fact that double quotes are used for string interpolation which we are going to cover on further sections.

The way that the `!` character needs to be espaced is by using __single quotes__. 
|||