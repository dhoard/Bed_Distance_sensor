#!/bin/bash
echo "compiling BD_sensor.c into the klipper firmware"
sed -i '/BD_sensor/d' src/Makefile;echo "src-y += BD_sensor.c" >> src/Makefile
sed 's/--dirty//g' "./scripts/buildcommands.py" -i

make

sed -i '/BD_sensor/d' src/Makefile
git checkout src/Makefile
git checkout ./scripts/buildcommands.py