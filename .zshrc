# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#
# Check duplicates before adding to path


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source ~/.profile

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

bindkey -v
export KEYTIMEOUT=1
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions

## Editor = vim
export EDITOR='nvim'

## Tmuxinator
#source ~/.bin/tmuxinator.zsh
alias mux="tmuxinator"
alias cl="clear"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias zsrc="source ~/.zshrc"
#alias wake="./wakedisplay.sh"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export VIRTUALENVWRAPPER_PYTHON='/Users/dustinul6/anaconda3/bin/python3'
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--python=/Users/dustinul6/anaconda3/bin/python3'
source /usr/local/bin/virtualenvwrapper.sh
#export PATH=$PATH:/usr/local/go/bin
#alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

# make virtualenv access framework python in mac os
# usage: $fpython => start a python repl (not ipython)
# $fpython somescript.py => execute the script
#function fpython {
    #if [[ ! -z "$VIRTUAL_ENV" ]]; then
        #PYTHONHOME=$VIRTUAL_ENV /usr/bin/python3 "$@"
    #else
        #/usr/bin/python3 "$@"
    #fi
#}

#source activate universe-starter-agent
#alias pbcopy='xclip -selection clipboard'
#alias pbpaste='xclip -selection clipboard -o'

# added by Anaconda3 installer
#export PATH="/home/dustinul6/anaconda3/bin:$PATH"
# export PATH="/Users/dustinul6/anaconda3/bin:$PATH"  # commented out by conda initialize
export SLACK_BOT_TOKEN='xoxb-247331771860-rtHHVkdfmrvxQOylKTZbOtgu'
# AWS shortcuts
export GOOGLE_APPLICATION_CREDENTIALS="/Users/dustinul6/Projects/speech_fang/key.json"

#rlid="i-04c221847917f0f6c"
rlid="i-077f54f9e8e52e316"
# start instance
alias startrl="aws ec2 start-instances --instance-ids $rlid"
alias getdns="aws ec2 describe-instances --instance-ids $rlid --query 'Reservations[0].Instances[0].PublicDnsName'"
alias connectrlnb="connect-rl.sh 2 nb"
alias connectrl="connect-rl.sh 4"
alias stoprl="aws ec2 stop-instances --instance-ids $rlid"

#source activate universe-starter-agent
if [ -d "/Users/dustinul6/scripts" ] ; then
	export PATH="/Users/dustinul6/scripts:$PATH" 
fi

# vi-mode show [NORMAL]
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

export KEYTIMEOUT=1

# vi-mode change cursor
# source: http://lynnard.me/blog/2014/01/05/change-cursor-shape-for-zsh-vi-mode/

zle-keymap-select () {
    if [ "$TERM" = "xterm-256color" ]; then
        if [ $KEYMAP = vicmd ]; then
            # the command mode for vi
            echo -ne "\e[2 q"
        else
            # the insert mode for vi
            echo -ne "\e[4 q"
        fi
    fi
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dustinul6/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dustinul6/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dustinul6/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dustinul6/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/dustinul6/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/dustinul6/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/dustinul6/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/dustinul6/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To use the gem maintained tmuxinator
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/gems/tmuxinator-1.1.1/bin:$PATH"
# ln -s /usr/local/bin /usr/local/lib/ruby/gems/2.6.0/gems/tmuxinator-1.1.1/bin/
#
# Conda autocomplete
# See: https://docs.conda.io/projects/conda/en/latest/user-guide/configuration/enable-tab-completion.html
#eval "$(register-python-argcomplete conda)"

# To properly import PED env
export PYTHONPATH="/Users/dustinul6/Projects/ped:$PYTHONPATH"

typeset -U PATH
