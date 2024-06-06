#!/bin/bash

if [ "$1" == "--date" ]; then
    echo $(date)
elif [ "$1" == "--logs" ]; then
    for i in {1..100}
        do
            filename="log${i}.txt"
            echo $filename > $filename
            echo $0 >> $filename
            echo $(date) >> $filename
        done    
fi

