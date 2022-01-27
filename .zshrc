# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/Brad/.oh-my-zsh"
export DISCORD_BOT_TOKEN="ODI4MDI2MTkzNzcyNDEyOTI4.YGjlfA.rquJHDL3uK_-eAUIq4TCGjq_0A4"
export CHL_DB_TOKEN="09980"
export DATABASE_URL="postgres://xokakxnqpmacbj:7bf754ca316e628df9668a987ca7d052ef0efc6b7e251b650c23c873efc56f4e@ec2-3-211-37-117.compute-1.amazonaws.com:5432/d38hibbmfdlphg"
export PYTHONPATH="/Users/Brad/Documents/Research/code/python/misc-useful":$PYTHONPATH

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
alias v='vim'
# switch to django app directory
alias web='cd /Users/Brad/Documents/Research/code/python/sites'
# Switch to python code directory
alias code='cd /Users/Brad/Documents/Research/code'
alias py='cd /Users/Brad/Documents/Research/code/python'
alias mat='cd /Users/Brad/Documents/Research/code/matlab'
alias ts='cd /Users/Brad/Documents/Research/code/typescript'
# Switch to Sherwin Lab research directory
alias res="cd '/Volumes/GoogleDrive/My Drive/Research/'"
alias data="cd '/Volumes/GoogleDrive/My Drive/Research/Data'"
alias class="cd '/Volumes/GoogleDrive/My Drive/Courses/3rd year/MAT259/'"
# Quickly copy FEL scripts to current dir
alias felp='cp /Users/Brad/Documents/Research/code/python/felepr/Do_Batch_Process_Phase_Correction_With_Gui.py ./;
mkdir -p ./processed_data;
cp /Users/Brad/Documents/Research/code/python/felepr/Do_PhaseCycling_And_FFT.py ./processed_data/'
# Make 'ls' look nicer
alias ls='ls -G'
# Make pwd give real directory
alias p='pwd -P'
alias cdp='cd -P .'
# Quick todo list
alias todo='v ~/.vim/.todo.md'
# Make 'tree' look nicer
alias tree='tree -C --filelimit 10'
# Jump to Sherwin Lab in Box
alias sher='cd /Users/Brad/Box\ Sync/Sherwin\ Lab'
# Jump to misc-useful
alias misc='cd /Users/Brad/Documents/Research/code/python/misc-useful && conda activate misc'
# Jump to felepr
alias fel='cd /Users/Brad/Documents/Research/code/python/felepr'
# Speed up parent directory
alias ..='cd ..'
alias cd..='cd ..'
# Quick refresh zshrc
alias refresh='source ~/.zshrc'
# Knot login shortcut
alias knot='ssh bdprice@knot.cnsi.ucsb.edu'
# Pi login shortcut
alias pi='ssh pi@169.231.176.77'
alias pil='ssh pi@raspberrypi.local'
# Pi run and stop LED flasher
alias jk="pi 'python3 ~/Documents/code/python/control.py' &"
alias kk="pi 'pkill -f control.py'"
# Quick access to plotting software
alias plot='python /Users/Brad/Documents/Research/Code/Python/misc-useful/plotGUI.py'
# Run MATLAB with no display in terminal
alias matlab='/Applications/MATLAB_R2021b.app/bin/matlab -nodisplay -nodesktop -nosplash'
# alias mrun=$(/Applications/MATLAB_R2021b.app/bin/matlab -nodisplay -nodesktop -nosplash -r 'try, run("$1"), catch me, fprintf('%s / %s\n',me.identifier,me.message), end, exit')
# Check status on knot
alias chk='knot "python3 ~/matlab/check_completion.py"'
# Quickly transfer
alias kr='knotrsync'
alias lr='locrsync'
alias lc='locscp'
alias kc='knotscp'
alias ad='cd ~/Documents/Research/code/typescript/advent'
alias ink='/Applications/Inkscape.app/Contents/MacOS/inkscape'
# Use ARM-okayed homebrew
alias brew='/usr/local/opt/homebrew/bin/brew'

###########
#FUNCTIONS#
###########
# RPi remote edit
function vpil { v scp://pi@raspberrypi.local/"$1" }
# Knot rsync
function knotrsync { rsync -aqz ssh "$1" 'bdprice@knot.cnsi.ucsb.edu:~/'"$2" ; }
# Local rsync from knot
function locrsync { rsync -aqz 'bdprice@knot.cnsi.ucsb.edu:~/'"$(printf %q "$1")" . ; }
# Knot scp
function knotscp { scp "$1" 'bdprice@knot.cnsi.ucsb.edu:~/'"$2" ; }
# Pi scp
function piscp { scp "$1" 'pi@169.231.182.39:~/'"$2" ; }
# Pi rsync
function pirsync { rsync -aqz ssh "$1" 'pi@169.231.182.39:~/'"$2" ; }
# Make directory and switch into it
# function mks { mkdir "$1" && cd "$1" ; } ## want to use 'take' instead
# pdf-crop-margins shortcut for all files in directory
function pdfcrop {
    for entry in `ls *.pdf`
    do
        pdf-crop-margins -o "/Users/Brad/Library/Containers/com.eltima.cloudmounter.mas/Data/.CMVolumes/Brad\ Price/Research/Literature/cropped_${entry}" -u -s -p 25 ${entry}
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
function type {
    file=$1;
    if [[ $file == *.ts ]] 
    then 
        file=${file%.*} 
    fi 
    tsc "$file.ts" && node "$file.js"; 
}
function advent {
    p="/Users/Brad/Documents/Research/code/typescript/advent/other/";
    pfile="get_input.py";
    # pout="advent.txt";
    python $p$pfile $1;
    ad;
}
#################
#PROGRAM CHANGES#
#################
# The original version is saved in .bash_profile.pysave
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH

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
