## String interpolation

It is possible to combine the `echo` command with the `$(command)` special syntax which returns the output of another command as a string. 

Lets understand this concept by trying out some examples: 

__Output the current user together with a string:__

```
echo "The current user is: $(whoami)"
```

__Output the current working directory together with a string:__

```
# -e makes special character combinations not literal
# Note the \n, meaning a line-break
echo -e "The current working directory is:\n$(pwd)"
```

__Output any current working directory content:__

```
echo -e "The content of the $(pwd) directory is:\n$(ls)"
```

By using _string interpolation_, our text strings become dynamic. Meaning that we are not hard coding the output of certain commands.