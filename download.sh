#!/bin/bash
BASE_URL="https://hf-mirror.com/datasets/pscotti/naturalscenesdataset/resolve/main"

if [ ! -d "naturalscenesdataset" ]; then
    mkdir "naturalscenesdataset"
fi
cd "naturalscenesdataset"

if [ ! -f ".gitattributes" ]; then
    wget "$BASE_URL/.gitattributes" -O ".gitattributes"
fi

while IFS= read -r line; do
    if [[ "$line" == *filter=lfs* ]]; then
        FILE_PATTERN=$(echo "$line" | cut -d ' ' -f 1)

        if [[ "$FILE_PATTERN" != "*" ]]; then
            mkdir -p "$(dirname "$FILE_PATTERN")"
            wget "$BASE_URL/$FILE_PATTERN" -P "$(dirname "$FILE_PATTERN")"
        fi
    fi
done < ".gitattributes"