#!/bin/bash

if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
    echo $(date)
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then

    if [ -z "$2" ]; then
        iters=100
    else
        iters=$2
    fi

    for ((i=1; i<=$iters; i++))
        do
            filename="log${i}.txt"
            echo $filename > $filename
            echo $0 >> $filename
            echo $(date) >> $filename
        done 

elif [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo ""
    echo "skrypt.sh [-d | --date] [-l | --logs] [-h | --help] [-e | --error]"
    echo "--date             Wyswietla obecna date."
    echo "--logs [n=100]     Tworzy n plikow log[n].txt."
    echo "--help             Wyswietla liste instrukcji."
    echo "--error            Tworzy n plikow error[n].txt."

elif [ "$1" == "--init" ]; then

name="github.com/Eli3001/NarzIT_Lab4.git"

git clone https://$name

r=$(basename "$name" .git)

export PATH=$(pwd)/"$name":$PATH

elif [ "$1" == "--error" ] || [ "$1" == "-e" ]; then

    if [ -z "$2" ]; then
        iters=100
    else
        iters=$2
    fi

    for ((i=1; i<=$iters; i++))
        do
            filename="error${i}.txt"
            echo $filename > $filename
            echo $0 >> $filename
            echo $(date) >> $filename
        done
fi

