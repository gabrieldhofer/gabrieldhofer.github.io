#!/bin/bash
#for item in $(find . -maxdepth 2 -mindepth 2 -name '*');
for item in $(find . -regex "\./[^\.].+");
do
	echo "item: $item"
done

