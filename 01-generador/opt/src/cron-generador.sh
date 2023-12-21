#!/bin/bash

formats=("image" "sound" "text")

if [[ $# -lt 1 ]]; then
	echo "Argumentos invalidos"
	exit 1
fi

number="$1"

for i in $(seq $number); do
	format=${formats[$RANDOM % ${#formats[@]}]}
	$(dirname $0)/generador $format
done
