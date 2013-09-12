export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
source ~/.git-completion.sh
alias bashedit="subl ~/.bash_profile"
alias bashupdate="source ~/.bash_profile"

[[ -s "/Users/marekbiczysko/.rvm/scripts/rvm" ]] && source "/Users/marekbiczysko/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM="auto"
# export PS1='[\t] \[\033[01;34m\]\w\[\033[00;35m\]$(__git_ps1 "

export PS1='\[\033[01;34m\]\w\[\033[00;35m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
export TERM="xterm-color"
export CLICOLOR=1
alias ls="ls -G"

alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias gitcolor="git config --global color.diff true"

alias st="git status"
alias co="git checkout"
alias ci="git commit -a"
alias br="git branch"
alias diff="git diff"
alias tree='git log --graph --pretty=format":%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias amend="git commit --amend -C HEAD"
alias undo="git reset --soft HEAD^"
alias log='git log --pretty=format:"%C(yellow)%h %C(blue)%ad%C(red)%d %C(reset)%s%C(green) [%cn]" --decorate --date=short'
alias pullbranch="git pull origin"
pull() { pullbranch "$@" ;}
alias pushbranch="git push origin"
push() { pushbranch "$@" ;}

alias mongostart="mongod --fork --config /usr/local/var/mongodb/mongod.conf"
alias be="bundle exec"

alias pryc="bundle exec pry -r ./config/environment"
alias sshkey="ssh-add ~/.ssh/github"

alias filesshow="defaults write com.apple.Finder AppleShowAllFiles YES && killall Finder"
alias fileshide="defaults write com.apple.Finder AppleShowAllFiles NO && killall Finder"

#export JRUBY_OPTS=-J-Xmx1024m