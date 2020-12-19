#!/bin/bash

for i in {01 02 03 04 05 06 07 08 09 10 11}; do 
        HOSTS=($(HOSTS[@]} "dl$i")
done

for i in {01 02 03 04 05 06 07 08 09 10 11}; do
	RESULT=$(ping -c1 -W1 $host | grep "1 received")
	if [ "RESULT" == "" ] ; then
                echo "$host : dead"
        else 
                echo "$host : alive"
        fi
done

exit 
