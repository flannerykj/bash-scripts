#!/bin/bash
VOLUMES=$(docker volume ls | awk 'NR>1 { print $2}')
while read -r line; do
  docker volume rm "... $line ..."
done <<< "$VOLUMES"
