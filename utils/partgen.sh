#!/bin/bash

input="part-list"
input2="part-list-div"

while IFS=',' read -ra part
do
	cat part-template | sed "s/FILENAME/${part[1]}/g" | sed "s/INSNAME/${part[2]}/g" | sed "s/INSVARNAME/${part[3]}/g" | sed "s/TRNS/${part[4]}/g" > OrnsteinPianoConcerto-Parts-${part[0]}.ly
done < "$input"

while IFS=',' read -ra part
do
        cat part-template-div | sed "s/FILENAME/${part[1]}/g" | sed "s/INSNAME/${part[2]}/g" | sed "s/INSVARNAME/${part[3]}/g" | sed "s/TRNS/${part[4]}/g" > OrnsteinPianoConcerto-Parts-${part[0]}.ly
done < "$input2"

