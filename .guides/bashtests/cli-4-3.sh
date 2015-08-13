#!/bin/bash
# echo test

bash_history=~/.bash_history
BASHDIR=/home/codio/workspace/.guides
check_file=cli-4-3
hist_file="$BASHDIR/bashtests/$check_file.txt"

echo "$check_file" >> $bash_history
grep -A2000 -e "^$check_file" $bash_history > "$BASHDIR/bashtests/${check_file}.txt"
find "$hist_file" -type f -exec sed -i "s@~@$HOME@g" {} \; 

# Must match for erasing history
RES_HIST=0
COUNT=0
QCOUNT=2

# Run test
function test_command {
	(( COUNT ++ ))
	if [[ $COUNT -le $QCOUNT ]]; then
		case $COUNT in
			1 )
				# expect_file_match "In your ~/workspace directory. Find with directory -maxdepth of 1 only file name type that begin with the letter h and redirect the output to a ~/workspace/project-log/files-with-h.txt file" "$BASHDIR/workspace-cli4/project-log/files-with-h.txt" "$BASHDIR/bashtests/CLI4/project-log-test/files-with-h.txt"
				expect_file_match "In your ~/workspace directory. Find with directory -maxdepth of 1 only type file names that begin with the letter 'h' and redirect the output to a ~/workspace/project-log/files-with-h.txt file" "/home/codio/workspace/project-log/files-with-h.txt" "$BASHDIR/project-log-test/files-with-h.txt"
				;;
			2 )
				expect_command "find . -path \"*.txt\"" "Find all the .txt files while being in the ~/workspace/project-log directory"
				;;
		esac
	else 
		echo "Well done!"
return 0
	fi
}


test_command