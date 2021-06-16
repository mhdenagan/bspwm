#!/bin/sh

capacity=$(cat /sys/class/power_supply/BAT1/capacity)
stat=$(cat /sys/class/power_supply/BAT1/status)

if [ $capacity -lt 30 ]
then
        echo "Baterija se prazni. Molimo vas prikljucite punjac"
        echo $capacity
        echo $stat
elif [ $capacity -lt 20 ]
then
        echo "Veoma nizak procenat baterije. Prikljucite punjac!"
        echo $capacity
        echo $stat
else
        echo "Baterija ima dovoljno snage"
        echo $capacity
        echo $stat
fi
