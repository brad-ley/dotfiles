# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/Brad/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="wezm"

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
# Initialize the autocompletion
autoload -Uz compinit && compinit -i

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
plugins=(git)

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
#########
#ALIASES#
#########

# Quick edit vimrc or bash_profile
alias vimrc='vim ~/.vimrc'
alias zrc='vim ~/.zshrc'
# Vi instead of vim
alias vim='nvim'
alias v='nvim'
# Switch to python code directory
alias code='cd /Users/Brad/Documents/Research/code'
alias py='cd /Users/Brad/Documents/Research/code/python'
alias mat='cd /Users/Brad/Documents/Research/code/matlab'
alias type='cd /Users/Brad/Documents/Research/code/typescript'
# Switch to Sherwin Lab research directory
alias res='cd /Volumes/GoogleDrive/My\ Drive/Research'
alias data='cd /Users/Brad/Box\ Sync/Sherwin\ Lab/Data'
# Make 'ls' look nicer
alias sher='cd /Users/Brad/Box\ Sync/Sherwin\ Lab'
# Jump to misc-useful
alias misc='cd /Users/Brad/Documents/Research/code/python/misc-useful'
alias ls='ls -G'
# Speed up parent directory
alias ..='cd ..'
alias cd..='cd ..'
# Quick refresh bash_profile
alias refresh='source ~/.zshrc'
# Knot login shortcut
alias knot='ssh bdprice@knot.cnsi.ucsb.edu'
# Quick access to plotting software
alias plot='python /Users/Brad/Documents/Research/Code/Python/misc-useful/plot_gui_v3.py'
# Run MATLAB with no display in terminal
alias matlab='/Applications/MATLAB_R2020a.app/bin/matlab -nodisplay -nodesktop -nosplash'
# Check status on knot
alias chk='knot "python3 ~/matlab/check_completion.py"'
# Quickly transfer
alias kr='knotrsync'
alias lr='locrsync'
alias lc='locscp'
alias kc='knotscp'

###########
#FUNCTIONS#
###########
# Knot rsync
function knotrsync { rsync -aqz ssh "$1" 'bdprice@knot.cnsi.ucsb.edu:~/'"$2" ; }
# Local rsync from knot
function locrsync { rsync -aqz 'bdprice@knot.cnsi.ucsb.edu:~/'"$(printf %q "$1")" . ; }
# Knot scp
function knotscp { scp "$1" 'bdprice@knot.cnsi.ucsb.edu:~/'"$2" ; }
# Local scp from Knot
function locscp { scp 'bdprice@knot.cnsi.ucsb.edu:~/'"$(printf %q "$2")"'/'"$(printf %q "$1")" . ; }
# Make directory and switch into it
function mks { mkdir "$1" && cd "$1" ; }
# pdf-crop-margins shortcut for all files in directory
function pdfcrop {
    for entry in `ls *.pdf`
    do
        pdf-crop-margins -o "/Volumes/GoogleDrive/My Drive/Research/Literature/cropped_${entry}" -u -s -p 25 ${entry}
    done
} 
# Run MATLAB function with only 'matlabrun function(args)'
function matlabrun {
	/Applications/MATLAB_R2020a.app/bin/matlab -nodisplay -nodesktop -nosplash -batch "try $1; catch me; fprintf('%s / %s\n',me.identifier,me.message), end, exit"
}

function matlabwin {
	/Applications/MATLAB_R2020a.app/bin/matlab -batch "try $1; catch me; fprintf('%s / %s\n',me.identifier,me.message), end, exit"
}
# Run .ts file using Node.js from terminal
function ts {
    file=$1;
    if [[ $file == *.ts ]] 
    then 
        file=${file%.*} 
    fi 
    tsc "$file.ts" && node "$file.js"; 
}
#################
#PROGRAM CHANGES#
#################
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
# PATH="/Users/Brad/Library/Python/3.8/bin:${PATH}"
# export PATH
# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
