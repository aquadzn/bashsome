cd $HOME

if [ $1 = conda ]; then
    NAME="Anaconda3"
    VS="2019.07"
    OS="Linux-x86_64"

    sudo apt-get update
    mkdir ~/.conda
    wget https://repo.anaconda.com/archive/$NAME-$VS-$OS.sh -O ~/anaconda.sh
    bash ~/anaconda.sh -b -p ~/$NAME
    sudo rm ~/anaconda.sh
    export PATH=~/$NAME/bin:$PATH
    source ~/.bashrc
    conda init
    conda config --set auto_activate_base false
    exec bash
    echo "$NAME installed!"
elif [ $1 = miniconda ]; then
    NAME="Miniconda3"

    sudo apt-get update
    mkdir ~/.conda
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
    bash ~/miniconda.sh -b -p ~/$NAME
    sudo rm ~/miniconda.sh
    export PATH=~/$NAME/bin:$PATH
    source ~/.bashrc
    conda init
    conda config --set auto_activate_base false
    exec bash
    echo "$NAME installed!"
fi
cd -
