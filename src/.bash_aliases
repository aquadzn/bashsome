mkcd() { mkdir -p "$1" && cd "$1"; }

function cdl {
    builtin cd "$@" && ls -al
    }

function acp() {
    read -p 'File to add: ' file 
    git add $file
    read -p 'Commit message: ' msg
    git commit -m "$msg (acp :robot:)"
    git push origin master
}

function gc {
    if [ $# -eq 0 ]; then
        read -p 'Please enter GitHub user: ' USER
        read -p 'Enter GitHub repo name: ' REPO
        git clone "git@github.com:$USER/$REPO.git"
    elif [ $# -eq 1 ]; then 
        git clone "git@github.com:aquadzn/$1.git"
    elif [ $# -eq 2 ]; then
        git clone "git@github.com:$1/$2.git"
    fi
}

function gcp {
    if [ $1 = "start" ]; then
        gcloud compute instances start pytorch-firstai --zone=europe-west1-b &&
        gcloud compute ssh pytorch-firstai --zone=europe-west1-b
    elif [ $1 = "stop" ]; then
        gcloud compute instances stop pytorch-firstai --zone=europe-west1-b
    fi
}
