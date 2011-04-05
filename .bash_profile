export CLICOLOR=1;

# Helpers:
source ~/.bash/git-completion.sh
source ~/.bash/git.sh
source ~/.bash/ssh-completion.sh
source ~/.bash/ssh.sh
source ~/.bash/rvm.sh
source ~/.bash/tabs.sh

# Aliases:
alias sublime='open -a "Sublime Text 2"'

# This loads RVM into a shell session:
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# Hello Messsage:
echo -e "Kernel Information: " `uname -smr`
echo -e "`bash --version`"
echo -ne "Uptime: "; uptime
echo -ne "Server time is: "; date

bash_prompt() {
  local NONE="\[\033[0m\]"    # unsets color to term's fg color

  # regular colors
  local K="\[\033[0;30m\]"    # black
  local R="\[\033[0;31m\]"    # red
  local G="\[\033[0;32m\]"    # green
  local Y="\[\033[0;33m\]"    # yellow
  local B="\[\033[0;34m\]"    # blue
  local M="\[\033[0;35m\]"    # magenta
  local C="\[\033[0;36m\]"    # cyan
  local W="\[\033[0;37m\]"    # white

  # emphasized (bolded) colors
  local EMK="\[\033[1;30m\]"
  local EMR="\[\033[1;31m\]"
  local EMG="\[\033[1;32m\]"
  local EMY="\[\033[1;33m\]"
  local EMB="\[\033[1;34m\]"
  local EMM="\[\033[1;35m\]"
  local EMC="\[\033[1;36m\]"
  local EMW="\[\033[1;37m\]"

  # background colors
  local BGK="\[\033[40m\]"
  local BGR="\[\033[41m\]"
  local BGG="\[\033[42m\]"
  local BGY="\[\033[43m\]"
  local BGB="\[\033[44m\]"
  local BGM="\[\033[45m\]"
  local BGC="\[\033[46m\]"
  local BGW="\[\033[47m\]"

  local UC=$W                 # user's color
  [ $UID -eq "0" ] && UC=$R   # root's color

  PS1="$B\$(__my_rvm_ruby_version)$C\u$W:$EMY\w$C\$(__git_at)$EMR\$(__git_branch)$EMG\$(__git_dirty)${NONE} $ "
}

bash_prompt
unset bash_prompt

rvm default

export AUTOFEATURE=true
export RSPEC=true
export PATH="/usr/local/sbin:$PATH:$HOME/bin"

