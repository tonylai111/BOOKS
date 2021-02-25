#!/bin/bash
cd ..

echo start un7z all 7z.001 in this repo

for file in $(pwd)/7z/*.7z.001
do
  7z x "$file"
done

echo done
