#!/bin/bash

eval "$(/opt/homebrew/bin/brew shellenv)"

# quit if already in tmux session
[ "$TMUX" == "" ] || exit 0

PS3="Please choose your session: "

IFS=$'\n' sessions=($(tmux list-sessions -F "#S" 2>/dev/null))
projects=("dotfiles" "Chief of Staff")
other=("NEW SESSION" "ZSH")
options=("${sessions[@]}" "${projects[@]}" "${other[@]}")

# Remove duplicate project entries if they already exist as sessions
seen=()
for opt in "${options[@]}"; do
    duplicate=false
    for s in "${seen[@]}"; do
        if [[ "$s" == "$opt" ]]; then
            duplicate=true
            break
        fi
    done
    if ! $duplicate; then
        seen+=("$opt")
    fi
done
options=("${seen[@]}")

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
        "dotfiles"|"Chief of Staff")
            if tmux has-session -t "=$opt" 2>/dev/null; then
                tmux attach-session -t "=$opt"
            else
                case $opt in
                    "dotfiles") dir="$HOME/dotfiles";;
                    "Chief of Staff") dir="$HOME/projects/chief-of-staff";;
                esac
                tmux new -s "$opt" -c "$dir"
            fi
            break
            ;;
        *)
            tmux attach-session -t "=$opt"
            break
            ;;
    esac
done
