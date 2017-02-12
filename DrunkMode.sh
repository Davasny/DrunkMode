#!/bin/bash

trap '' 2

while true
do
	echo -n $(whoami)@$(hostname):$(pwd)'# '
	read -e command
	$command
done

trap 2
