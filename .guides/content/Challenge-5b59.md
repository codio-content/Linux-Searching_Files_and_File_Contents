{Check It!|assessment}(test-3529396878)

---

The resulting file should look like this:

```
Changelog
Version: 1.0
username: codio
hello.txt
hi.txt
project-log
Version: 2.0
file-list.txt
found.txt
greet.txt
```

|||guidance
### Correct answers
1. `echo -e "Version: 2.0\nusername: $(whoami)\n$(ls)" > project-log/diff.txt`
2. `grep -Fxvf "project-log/changelog.txt" "project-log/diff.txt" >> project-log/changelog.txt`

|||