#!/bin/bash

if [ "$1" == "--date" ]; then
    echo $(date)
elif [ "$1" == "--logs" ]; then

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

elif [ "$1" == "--help" ]; then
    echo "--date             Wyswietla obecna date."
    echo "--logs [n=100]     Tworzy n plikow log[n].txt."
    echo "--help             Wyswietla liste instrukcji."

fi