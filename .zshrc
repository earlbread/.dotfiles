export ZSH=~/.oh-my-zsh

# Theme
ZSH_THEME="refined"
# Plugins
plugins=(git gitfast docker kubectl)

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Add Local Path
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/bin"

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# History
HISTSIZE=100000
SAVEHIST=100000

setopt BANG_HIST                 # Treat the ‘!’ character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the “:start:elapsed;command” format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don’t record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don’t record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don’t write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don’t execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# ls alias
alias l='ls -alh'
alias ll='ls -lh'

# vim alias
alias vim='Vim'
alias vi='nvim'
alias vim='nvim'
alias vimdiff='nvim -d'

# nvim True color
export NVIM_TUI_ENABLE_TRUE_COLOR=1

# z.sh
if [ -d ~/z ]; then
    source ~/z/z.sh
fi

# CC
export CC=$(which gcc)

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Git
export GIT_EDITOR=nvim

if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function lb() {
    vim ~/logbook/$(date '+%Y-%m-%d').md
}

# GNU Findutils
PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

# Binutils
PATH="/usr/local/opt/binutils/bin:$PATH"

# Use brew ruby
PATH="/usr/local/opt/ruby/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sejung/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sejung/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sejung/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sejung/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$PATH:/Users/sejung/.dotnet/tools"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export PATH="/usr/local/Homebrew/bin:$PATH"
