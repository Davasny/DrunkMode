#!/bin/bash

trap '' 2

while true
do
        printf $(whoami)@$(hostname):$(pwd)'[0]# '
        read -e command0
        printf $(whoami)@$(hostname):$(pwd)'[1]# '
        read -e command1

        if [ "$command0" == "$command1" ] ; then
                $command0
        else
                echo "Try again!"
        fi

done

trap 2
