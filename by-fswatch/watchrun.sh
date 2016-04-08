#!/bin/bash

fswatch -0 --include='\.go$' --exclude='.*' --event=Created --event=Updated ./src | \
while read -d '' file; do
  echo $'\e[2J'
  go run "${file}"
done
