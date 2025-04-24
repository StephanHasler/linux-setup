###############################################################################
#         Initial setup file for bash on LINUX
###############################################################################

# Enable some default tab completions.
if [[ -f /etc/bash_completion ]]; then
    source /etc/bash_completion
fi

# Set strict file permissions.
umask 077

# Set the default terminal prompt.
export PS1='\h:\w>'
# Make prompt aware of git, screen, and venv.
if [[ -f ${HOME}/.bash_venv_screen_git_prompt ]]; then
    source ${HOME}/.bash_venv_screen_git_prompt
fi

# Define the default editor to be used.
export EDITOR=gedit
# Ignore space and duplicates in the terminal's history.
export HISTCONTROL=ignoreboth:erasedups
# Add user's 'bin' to PATH.
export PATH=${HOME}/bin:${PATH}

### Program aliases ###########################################################

# Different colorful versions of 'ls'.
if [[ "$TERM" != "dump" ]]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias la='ls -a --color=auto'
    alias ll='ls -l --color=auto'
fi

# Always show all branches in 'gitk'.
alias gitk='gitk --all'

###############################################################################

# Solve scaling problems when using remote desktop with high-dpi monitor.

# Check that we are not on a local display.
#if [[ "$DISPLAY" != ":0" ]]; then
#    export GDK_SCALE=2
#    #export GDK_DPI_SCALE=0.5
#fi

# Tell OpenGL to render application on monitor side.
#export LIBGL_ALWAYS_INDIRECT=1

###############################################################################
