#Colorful ls output
alias ls='ls --color=auto'
#Long list
alias ll='ls -lh'
#Alias to show currrent battery and time to charge or discharge.
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep -E "state|to\ full|percentage"'
#Go to parent aliases
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
#Change directory and list them
alias cdl="cd `pwd`/$1 ;ls "
#Check net connectivity
alias netchk="ping -c2 google.com"
#autotune powertop to save battery
alias savebat='sudo powertop --auto-tune'
#go to Work drive
alias cdw='cd /media/pushpankar/Work'
#go to Project folder
alias cdproj='cd /media/pushpankar/Work/Web\ Practice/Projects'
#Mount and go to Entertainment
alias cde='cd /media/pushpankar/Entertainment'
#Mount and go to Study
alias cds='cd /media/pushpankar/Study'


# Path to the bash it configuration
export BASH_IT="/home/pushpankar/build-repos/bash-it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='powerline'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh
