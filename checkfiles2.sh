#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo " "
echo "#==========================================================="
echo "Start Times"
cd /data/picasso/20181105
head *.out -n 1

echo "End Times"
tail *.out -n 5

echo "#==========================================================="
