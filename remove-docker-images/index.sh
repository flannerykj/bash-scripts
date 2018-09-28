#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
  docker image rm $line
done < "$1"
