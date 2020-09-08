# ~/.bashrc: executed by bash(1) for non-login shells.

s() {
 pa=$@
 pa=${pa// /+}
 w3m duckduckgo.com/lite?q="$pa"
}

gmg(){
  pa=$@
  pa=${pa// /+}
  tizonia --gmusic-unlimited-genre "'$pa'"
}

gma(){
  pa=$@
  pa=${pa// /+}
  tizonia --gmusic-unlimited-artist "'$pa'"
}

gmal(){
  pa=$@
  pa=${pa// /+}
  tizonia --gmusic-unlimited-album "'$pa'"
}

gmac(){
  pa=$@
  pa=${pa// /+}
  tizonia --gmusic-unlimited-activity "'$pa'"
}

gmpr(){
  tizonia --gmusic-unlimited-promoted-tracks
}
gmp(){
  pa=$@
  pa=${pa// /+}
  tizonia --gmusic-podcast "'$pa'"
}

gmt(){
  pa=$@
  pa=${pa// /+}
  tizonia --gmusic-unlimited-tracks "'$pa'"
}

gmy(){
  pa=$@
  pa=${pa// /+}
  tizonia --youtube-audio-mix-search "'$pa'"
}

b(){
  if [[ -z $1 ]]; then
    cat /sys/class/backlight/intel_backlight/brightness
  else
   echo $1 | sudo tee /sys/class/backlight/intel_backlight/brightness
  fi
}

alias tmux='tmux -2'
alias ip="ip -s -c -h"

alias nano='nano -l'

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

bold="\[\e[1m\]"; underline="\[\e[4m\]"; dim="\[\e[2m\]"; strickthrough="\[\e[9m\]"; blink="\[\e[5m\]"; reverse="\[\e[7m\]"; hidden="\[\e[8m\]"; normal="\[\e[0m\]"; black="\[\e[30m\]"; red="\[\e[31m\]"; green="\[\e[32m\]"; orange="\[\e[33m\]"; blue="\[\e[34m\]"; purple="\[\e[35m\]"; aqua="\[\e[36m\]"; gray="\[\e[37m\]"; darkgray="\[\e[90m\]"; lightred="\[\e[91m\]"; lightgreen="\[\e[92m\]"; lightyellow="\[\e[93m\]"; lightblue="\[\e[94m\]"; lightpurple="\[\e[95m\]"; lightaqua="\[\e[96m\]"; white="\[\e[97m\]"; default="\[\e[39m\]"; BLACK="\[\e[40m\]"; RED="\[\e[41m\]"; GREEN="\[\e[42m\]"; ORANGE="\[\e[43m\]"; BLUE="\[\e[44m\]"; PURPLE="\[\e[45m\]"; AQUA="\[\e[46m\]"; GRAY="\[\e[47m\]"; DARKGRAY="\[\e[100m\]"; LIGHTRED="\[\e[101m\]"; LIGHTGREEN="\[\e[102m\]"; LIGHTYELLOW="\[\e[103m\]"; LIGHTBLUE="\[\e[104m\]"; LIGHTPURPLE="\[\e[105m\]"; LIGHTAQUA="\[\e[106m\]"; WHITE="\[\e[107m\]"; DEFAULT="\[\e[49m\]";    

PS1="${bold}${purple}\@ ${red}\u ${green}\w${red}/\$${aqua} "
