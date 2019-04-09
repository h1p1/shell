export ZSH="/Users/yogasukma/.oh-my-zsh"
export TERM="xterm-256color"

# zsh configuration
ZSH_THEME="spaceship"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy" # "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
plugins=(git battery zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# spaceship configuration
SPACESHIP_TIME_SHOW=true
SPACESHIP_DIR_PREFIX=""
SPACESHIP_PROMPT_ORDER=(time dir git battery line_sep char)
SPACESHIP_CHAR_SYMBOL="🚀 "
SPACESHIP_BATTERY_THRESHOLD="30"
SPACESHIP_BATTERY_SHOW="charged"

#alias
alias ls="colorls -a --sd"
alias test="php vendor/bin/phpunit"


export PATH=$HOME/.composer/vendor/bin:$PATH
