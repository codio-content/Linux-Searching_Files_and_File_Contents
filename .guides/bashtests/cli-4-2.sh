#!/bin/bash
# echo test

bash_history=~/.bash_history
BASHDIR=/home/codio/workspace/.guides
check_file=cli-4-2
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
				# expect_file_match "append 'current_user' to ~/workspace/project-log/changelog.txt file" "$BASHDIR/workspace-cli4/project-log/changelog.txt" "$BASHDIR/bashtests/CLI4/project-log-test/changelog-cli-4-2.txt"
				expect_file_match "append 'current_user' to ~/workspace/project-log/changelog.txt file" "/home/codio/workspace/project-log/changelog.txt" "$BASHDIR/project-log-test/changelog-cli-4-2.txt"
				;;
			2 )
				# expect_file_match "append ~/workspace/project-log/file-list.txt content to ~/workspace/project-log/changelog.txt file" "$BASHDIR/workspace-cli4/project-log/changelog.txt" "$BASHDIR/bashtests/CLI4/project-log-test/changelog-cli-4-2-2.txt"
				expect_file_match "append ~/workspace/project-log/file-list.txt content to ~/workspace/project-log/changelog.txt file" "/home/codio/workspace/project-log/changelog.txt" "$BASHDIR/project-log-test/changelog-cli-4-2-2.txt"
				;;
		esac
	else 
		echo "Well done!"
return 0
	fi
}


test_command