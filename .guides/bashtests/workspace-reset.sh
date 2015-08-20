#!/bin/bash
# workspace-reset file hierarchy

WORKSPACE=/home/codio/workspace/
arg=$1

function init_workspace {
	mkdir ${WORKSPACE}project-log
	echo "Project files have been reseted"
	sleep 2
	clear
}

function reset_workspace {
	rm -r ${WORKSPACE}project-log
  rm ${WORKSPACE}hello.txt ${WORKSPACE}hi.txt
    > ~/.bash_history
	echo "Reseting project files and directories"
	sleep 2
	init_workspace
}

function reset_challenges {
	find "${WORKSPACE}.guides/bashtests/" -path "*.txt" -delete
	# find "${WORKSPACE}/bashtests/" -path "*.txt" -delete
	echo "Project challenges files have been reseted."
	sleep 2
	clear
}

case $arg in
	challenges ) reset_challenges
		;;
	workspace ) reset_workspace
		;;
  ch-1-5 )
    if [[ ! -f ~/workspace/hello.txt ]]; then
      touch ~/workspace/hello.txt
    fi
    if [[ ! -f ~/workspace/hi.txt ]]; then
      touch ~/workspace/hi.txt
    fi
    if [[ ! -d ~/workspace/project-log ]]; then
      mkdir ~/workspace/project-log
    fi
    clear
    ;;
  ch-3-2 )
    echo -e "Changelog\nVersion: 1.0" > ~/workspace/project-log/changelog.txt"
    echo -e "hello.txt\nhi.txt\nproject-log" > ~/workspace/project-log/file-list.txt
    clear
    ;;
  ch-4-2 )
    if [[ ! -f ~/workspace/hello.txt ]]; then
      touch ~/workspace/hello.txt
    fi
    if [[ ! -f ~/workspace/hi.txt ]]; then
      touch ~/workspace/hi.txt
    fi
    if [[ ! -d ~/workspace/project-log ]]; then
      mkdir ~/workspace/project-log
    fi
    clear
    ;;
  ch-5-5 )
    if [[ ! -f ~/workspace/file-list.txt ]]; then
      touch ~/workspace/file-list.txt
    fi
    if [[ ! -f ~/workspace/found.txt ]]; then
      touch ~/workspace/found.txt
    fi
    if [[ ! -f ~/workspace/greet.txt ]]; then
      touch ~/workspace/greet.txt
    fi
    echo -e "Changelog\nVersion: 1.0\nusername: codio\nhello.txt\nhi.txt\nproject-log" > ~/workspace/project-log/changelog.txt"
    clear
    ;;
	* ) echo "'$arg' doesn't match any available arguments" 
		;;
esac