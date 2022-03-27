# Setup fzf
# ---------
if [[ ! "$PATH" == */home/vastness/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/vastness/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/vastness/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/vastness/.fzf/shell/key-bindings.bash"
