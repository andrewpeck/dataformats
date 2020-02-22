#!/bin/bash

AUX1=$(git diff-tree --no-commit-id --name-only -r "$CI_COMMIT_SHA" -- l0mdt_dataFormat.py) 
AUX2=$(git diff-tree --no-commit-id --name-only -r "$CI_COMMIT_SHA" -- l0mdt_buses.csv)
SHA="$(git rev-parse HEAD)"

if [[ ( ( -n "$AUX1" ) || ( -n "$AUX2" ) ) && ( "$SHA" == "$CI_COMMIT_SHA" ) ]]; then
    python l0mdt_dataFormat.py -i l0mdt_buses.csv -r "$CI_COMMIT_SHA"
fi



exit 0


SHA="$(git rev-parse HEAD)"
echo "CI SHA: $CI_COMMIT_SHA"
echo "Job SHA: $SHA"
if [ "$CI_COMMIT_SHA" != "$SHA" ]; then
  python l0mdt_dataFormat.py -i l0mdt_buses.csv -r $SHA
fi
