#!/bin/sh

export PATH=$PATH:~/.local/bin:/usr/local/bin
[ "$TMUX" == "" ] || exit 0
PS3="Please choose your session: "

sessions=($(tmux list-sessions -F "#S" 2>/dev/null))
other=("NEW SESSION" "ZSH")

options=("${sessions[@]}" "${other[@]}")

echo "Available sessions"
echo "------------------"
echo " "
select opt in "${options[@]}"
do
    case $opt in
        "NEW SESSION")
            read -p "Enter new session name: " SESSION_NAME
            tmux new -s "$SESSION_NAME"
            break
            ;;
        "ZSH")
            zsh
            break;;
        *)
            tmux attach-session -t $opt 
            break
            ;; 
    esac
done
