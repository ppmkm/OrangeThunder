#!/bin/sh
#*----------------------------------------------------------------------------
#* hostPing
#* Check if all nodes in the local network are alive
#*----------------------------------------------------------------------------
for i in $(cat /etc/hosts | grep "192." | awk '{ print $2 ; }' | cut -f1 -d"%")
 do
    echo "$(date) $i "$( ping -c 1 -t 1 $i | grep -a "ttl=" | wc -l )  
done

