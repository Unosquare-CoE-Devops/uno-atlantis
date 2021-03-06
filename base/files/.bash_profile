#   Colors
#   ------------------------------------------------------------
    export      NOCOLOR="\033[0m"
    export        BLACK="\033[0;30m"
    export    DARK_GRAY="\033[1;30m"
    export         BLUE="\033[0;34m"
    export   LIGHT_BLUE="\033[1;34m"
    export        GREEN="\033[0;32m"
    export  LIGHT_GREEN="\033[1;32m"
    export         CYAN="\033[0;36m"
    export   LIGHT_CYAN="\033[1;36m"
    export          RED="\033[0;31m"
    export    LIGHT_RED="\033[1;31m"
    export       PURPLE="\033[0;35m"
    export LIGHT_PURPLE="\033[1;35m"
    export BROWN_ORANGE="\033[0;33m"
    export       YELLOW="\033[1;33m"
    export   LIGHT_GRAY="\033[0;37m"
    export        WHITE="\033[1;37m"

    export LESS_TERMCAP_mb=$'\E'${RED:4}          # begin blinking
    export LESS_TERMCAP_md=$'\E'${LIGHT_RED:4}    # begin bold
    export LESS_TERMCAP_me=$'\E'${NOCOLOR:4}      # end mode
    export LESS_TERMCAP_se=$'\E'${NOCOLOR:4}      # end standout-mode
    export LESS_TERMCAP_so=$'\E[01;44;33m'        # begin standout-mode - info box
    export LESS_TERMCAP_ue=$'\E'${NOCOLOR:4}      # end underline
    export LESS_TERMCAP_us=$'\E'${LIGHT_GREEN:4}  # begin underline

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad

#   Change Prompt
#   ------------------------------------------------------------
    function prompt_command() {
     DATE=$(date +%H:%M:%S)
     UNAME="${CYAN}${USER}@$(hostname -s)${NOCOLOR}"
     LN="┏━━[$DATE]━━[$UNAME]━━"
     FILL="`printf -vch "%${COLUMNS}s" ""; printf "%s" "${ch// /━}"`"
     echo -e "${LN}${FILL:((${#LN}-16))}┓"
    }
    export PROMPT_COMMAND=prompt_command
    PS1="┃  \[${YELLOW}\]\w\[${NOCOLOR}\]\n"
    export PS1="${PS1}┗━\[${LIGHT_RED}\]►\[${NOCOLOR}\] "
    export PS2="┗━\[${YELLOW}\]►\[${NOCOLOR}\] "

    alias terraform='tfenv install | terraform'