export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/texbin

# settings I don't want synced
if [ -f ~/.bashrc_local ]; then
   source ~/.bashrc_local
fi

# pretify the shell
PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

# source bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# general aliases to make life easier
alias screen-saver=/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine
alias ss=screen-saver
alias slp='pmset sleepnow'

# use the GUI version of emacs
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'

# enable Git Completion
if [ -f ~/.git-completion.sh ]; then
  . ~/.git-completion.sh
fi

# make git shorter
alias g="git"

# make finding my ip easy
alias ip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"

# automatically restart SSH agent ###
#
#SSH_ENV="$HOME/.ssh/environment"
#
#function start_agent {
#    echo "Initialising new SSH agent..."
#    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
#    echo succeeded
#    chmod 600 "${SSH_ENV}"
#    . "${SSH_ENV}" > /dev/null
#    /usr/bin/ssh-add;
#}
#
# Source SSH settings, if applicable
#
#if [ -f "${SSH_ENV}" ]; then
#    . "${SSH_ENV}" > /dev/null
#    #ps ${SSH_AGENT_PID} doesn't work under cywgin
#    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
#        start_agent;
#    }
#else
#    start_agent;
#fi

