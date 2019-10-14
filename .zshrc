# Path to your oh-my-zsh installation.
export ZSH="/Users/kevinfunderburg/.oh-my-zsh"

# Thene
ZSH_THEME="spaceship"

# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

#source $ZSH/custom/plugins/zsh-history-substring-search/zsh-syntax-highlighting.zsh
#source $ZSH/custom/plugins/zsh-history-substring-search/.zsh-history-substring-search.zsh
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down
#bindkey -M vicmd 'k' history-substring-search-up
#bindkey -M vicmd 'j' history-substring-search-down

#
# PLUGINS
#
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  history-substring-search
  osx
  # brew
  vi-mode
  python
  # bash
  colored-man-pages
  iterm2
)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Turn on colors for tree command
# export TREE_COLORS=1

# Got these from https://blog.callstack.io/supercharge-your-terminal-with-zsh-8b369d689770

# Enabling autocompletion
autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

zmodload -i zsh/complist

# Save history
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# Options
setopt auto_cd # cd by typing directory name if it's not a command
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances
setopt correct_all # autocorrect commands
setopt interactive_comments # allow comments in interactive shells


###------------------------
#  aliases
###------------------------

# navigation
alias h='history'

# Path Shortcuts
alias cddr='cd ~/Dropbox/'
alias cds='cd ~/Dropbox/School'
alias cdd='cd ~/Desktop/'
alias cdg='cd ~/github/'
alias cda='cd ~/github/AppleScripts/'

# git
alias gpom='git push -u origin master'

# git bare
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# make
alias m='make'
alias mc='make cleanall'
alias mg='make go'
alias mt='make test'

# editor shortcuts
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias srcz='source ~/.zshrc'

alias v='vim'

# tree
alias t='tree -C -l'
alias td='tree -C -d -l'
alias tl='tree -C -l -L'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
