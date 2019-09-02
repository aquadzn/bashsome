mkcd() { mkdir -p "$1" && cd "$1"; }

function cdl {
    builtin cd "$@" && ls -al
    }

function acp() {
    read -p 'File to add: ' file 
    git add $file
    read -p 'Commit message: ' msg
    git commit -m "$msg"
    git push
}
