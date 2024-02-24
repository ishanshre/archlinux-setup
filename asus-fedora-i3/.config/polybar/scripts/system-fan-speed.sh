#!/bin/sh

# speed=$(sensors | grep asus-isa-0000 | awk '{print $2; exit}')

# if [ "$speed" != "" ]; then
#     speed_round=$(echo "$speed/1000" | bc -l | LANG=C xargs printf "%.1f\n")
#     echo "# $speed_round"
# else
#    echo "#"
# fi


# speed=$(sensors | awk '/asus-isa-0000/ {print $2}')

# if [ -n "$speed" ]; then
#     speed_round=$(echo "$speed" | sed 's/RPM//' | xargs printf "%.1f\n")
#     echo "# $speed_round"
# else
#     echo "#"
# fi


fan_data=$(sensors -j | jq -r '.["asus-isa-0000"]')

cpu_fan=$(echo "$fan_data" | jq -r '.["cpu_fan"]["fan1_input"]')
gpu_fan=$(echo "$fan_data" | jq -r '.["gpu_fan"]["fan2_input"]')


echo "$cpu_fan $gpu_fan"



