#!/bin/bash

# List the keys of the JSON file, randomize it and pick the first one
tipname=$(jq -r 'keys[]' tips.json | shuf | head -n 1)

# Get the value from the random key
tip=$(jq -r ."\"$tipname\"" tips.json)

# Return it so GitHub Actions can use it
echo "::set-output name=tip::$(echo $tip)"
