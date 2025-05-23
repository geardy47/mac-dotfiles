# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git flutter)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export EDITOR=nvim
alias v=nvim

# Flutter
alias raya='cd ~/Work/Raya/Projects/raya1/ && v lib/main_dev.dart'
alias flcp='fvm flutter clean && fvm flutter pub get'
alias flpr='fvm dart run build_runner build --delete-conflicting-outputs'
alias flcpr='flcp && flpr'
alias flapkd='fvm flutter build apk --obfuscate --split-debug-info --release --flavor dev -t lib/main_dev.dart'
alias flapks='fvm flutter build apk --obfuscate --split-debug-info --release --flavor stage -t lib/main_stage.dart'
alias flapkp='fvm flutter build apk --obfuscate --split-debug-info --release --flavor prod -t lib/main_prod.dart'
alias flabd='fvm flutter build appbundle --obfuscate --split-debug-info --release --flavor dev -t lib/main_dev.dart'
alias flabs='fvm flutter build appbundle --obfuscate --split-debug-info --release --flavor stage -t lib/main_stage.dart'
alias flabp='fvm flutter build appbundle --obfuscate --split-debug-info=code_mapping --release --flavor prod -t lib/main_prod.dart --extra-gen-snapshot-options=--save-obfuscation-map=code_mapping/mappingFile'
alias flipad='fvm flutter build ipa --obfuscate --split-debug-info --release --flavor dev -t lib/main_dev.dart'
alias flipas='fvm flutter build ipa --obfuscate --split-debug-info --release --flavor stage -t lib/main_stage.dart'
alias flipap='fvm flutter build ipa --obfuscate --split-debug-info=code_mapping --release --flavor prod -t lib/main_prod.dart --extra-gen-snapshot-options=--save-obfuscation-map=code_mapping/mappingFile'

# OpenJDK
# export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export ANDROID_HOME=/opt/homebrew/share/android-commandlinetools/
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin/:$PATH
# export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

# Journal
alias moon='cd ~/Personal/Moon/ && v Home.md'
alias un='./.scripts/auto_commit.sh'

# Start tmux
#if [ -z "$TMUX" ]
#then
#    tmux attach -t $USER || tmux new -s $USER
#fi

# bun completions
[ -s "/Users/gentashandi/.bun/_bun" ] && source "/Users/gentashandi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# flutter fire
export PATH="$PATH":"$HOME/.pub-cache/bin"
# export PATH=$HOME/fvm/default/bin:$PATH
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Created by `pipx` on 2024-06-28 07:01:51
export PATH="$PATH:/Users/gentashandi/.local/bin"
