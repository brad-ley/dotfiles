#########
#ALIASES#
#########

# Quick edit vimrc or bash_profile
alias vimrc='vim ~/.vimrc'
alias bashp='vim ~/.bash_profile'
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
