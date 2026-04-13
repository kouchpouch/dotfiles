#!/bin/bash

cur_temp=$(sunsetr get static_temp)

if [[ cur_temp -lt 6500 ]]; then
	(( cur_temp += 100 ))
fi

sleep 0.1;
sunsetr set static_temp=${cur_temp} > /dev/null
