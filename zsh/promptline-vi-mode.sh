vi_mode_ins="INSERT"
vi_mode_cmd="NORMAL"
vi_mode=$vi_mode_ins

function zle-keymap-select {
  vi_mode="${${KEYMAP/vicmd/${vi_mode_cmd}}/(main|viins)/${vi_mode_ins}}"
  __promptline
  zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
  vi_mode=$vi_mode_ins
}
zle -N zle-line-finish

function TRAPINT {
  vi_mode=$vi_mode_ins
  return $(( 128 + $1 ))
}

