local current_dir=${0:A:h}
fpath=("$current_dir/functions" $fpath)
autoload $current_dir/functions/*(:t)
zle -N __kube-switch-context
zle -N __kube-switch-namespace
bindkey '\ek' __kube-switch-context
bindkey '\en' __kube-switch-namespace
unset current_dir
