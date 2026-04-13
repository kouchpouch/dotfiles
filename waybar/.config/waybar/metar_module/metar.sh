#!/bin/bash

airport=""
script_name="./metar.sh"

if [[ ! -z $1 ]]; then
	airport=$1
fi

counter=1
if [[ -z $airport ]]; then
	latlong+=$(curl -s ifconfig.co/json | jq -r '.latitude')
	latlong+=","
	sleep 2
	latlong+=$(curl -s ifconfig.co/json | jq -r '.longitude')
	abspath=$(realpath ${0})
	while [ "./${awkdpath}" != $script_name ]; do
		awkdpath=$(echo $abspath | awk -F "/" '{print $'$counter'}')
		if [[ "./${awkdpath}" == $script_name || "/${awkdpath}" == $script_name ]]; then
			break
		else
			final_path+="/${awkdpath}"
		fi
		((counter++))
	done

	c_program_dir="${final_path}/get_closest_airport"
	airport=$(${c_program_dir} ${latlong} ${final_path})
fi

while true;
do
	raw_metar=$(curl https://aviationweather.gov/api/data/metar?ids=${airport})
	counter=1

	while [ "$formatted" != "RMK" ]; do
		formatted=$(echo $raw_metar | awk '{print $'$counter'}')
		if [ "$formatted" == "RMK" ]; then
			break
		elif [ "$formatted" != "METAR" ]; then
			finalstring+="$formatted "
		fi
		((counter++))
	done

	echo '{"text": "'${airport}'", "tooltip": "'${finalstring}'"}'

	sleep 60
done
