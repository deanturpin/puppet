# Git
alias gs='git status -s'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gr='git reset'
alias gd='git diff'
alias gh='git diff HEAD'
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gls='git ls-tree -r HEAD --name-only'

# Commit all and push
alias gx='git commit -a && git push'

# Make
alias mc='make clean'
alias mr='make run'
alias mj='make -j'

# Misc
alias j=jobs
alias brighton='curl wttr.in/brighton'
alias serve='python -m SimpleHTTPServer'
