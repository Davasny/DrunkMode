#!/bin/bash

trap '' 2

while true
do
        printf $(whoami)@$(hostname):$(pwd)'[0]# '
        read -e command0
        printf $(whoami)@$(hostname):$(pwd)'[1]# '
        read -e command1

        if [ "$command0" == "$command1" ] ; then
                if [ "$command0" == "exit" ] ; then
                        kill -9 `ps --pid $$ -oppid=`; exit
                else
                        $command0
                fi
        else
                echo "Try again!"
        fi

done

trap 2
