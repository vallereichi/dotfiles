# configure input line
parse_git_branch() {
    branch=$(git branch 2> /dev/null | grep '*' | sed 's/* //')
    if [ -n "$branch" ]; then
        echo -e "\e[32m($branch)"
    fi
}
PS1='\[\e[90m\][\t] \u@\h $(parse_git_branch) \[\e[36m\]\W\n \[\e[35m\] ➜ \[\e[0m\]'

# add color support to ls
alias ls='ls --color=auto'

# add color support to grep
alias grep='grep --color=auto'

# aliases
alias ll='ls -l'
alias la='ls -la'


