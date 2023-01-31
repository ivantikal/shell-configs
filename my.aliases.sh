


alias ppwd="pwd | tr -d '\n' | pbcopy"

full() {
        file ${1} > /dev/null || {
                echo "${1} not found!"
        } && {
            __dir="$(cd "$(dirname "${1}")" && pwd)"
            echo -n "${__dir}/$(basename "${1}")" | pbcopy
                echo $(pbpaste)
    }
}
cdlast() {
  cd "$(ls -rt | tail -n1)"
}


alias kx='f() { [ "$1" ] && kubectl config use-context $1 || kubectl config current-context ; } ; f'
alias kn='f() { [ "$1" ] && kubectl config set-context --current --namespace $1 || kubectl config view --minify | grep namespace | cut -d" " -f6 ; } ; f'

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
#setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILESIZE=10000000
