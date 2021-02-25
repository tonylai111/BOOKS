#!/bin/bash
cd ..

echo start update-git-ignore 

rm -f .gitignore

for file in $(pwd)/7z/*.7z.001
do
  file="${file##*/}"
  file="${file//\[/\\\[}"
  file="${file//\]/\\\]}"
  file="${file//\'/\\\'}"
  file="${file//\"/\\\"}"
  file="${file//\ /\\\ }"
  file="${file%*.7z.001}"
  file="$file"".pdf"
  echo $file >> .gitignore
done

echo done
