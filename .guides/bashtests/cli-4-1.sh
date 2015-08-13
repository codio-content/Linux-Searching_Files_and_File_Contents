
# echo test

bash_history=~/.bash_history
BASHDIR=/home/codio/workspace/.guides
check_file=cli-4-1
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
				expect_file_match "echo 'changelog.txt' match content and format on ~/workspace/project-log directory" "/home/codio/workspace/project-log/changelog.txt" "/home/codio/workspace/.guides/project-log-test/changelog.txt"
				;;
			2 )
				expect_file_match "'ls' ~/workspace/ content to match file named ~/workspace/project-log/file-list.txt content" "/home/codio/workspace/project-log/file-list.txt" "/home/codio/workspace/.guides/project-log-test/file-list.txt"
				;;
		esac
	else 
        echo "Well done!"
return 0
	fi
}


test_command