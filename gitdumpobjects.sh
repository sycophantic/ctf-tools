#!/bin/bash

#This script dumps all the git objects files, useful for CTFs
#grep the output for the flag or just read it

objects=$(find .git/objects -type f | sed 's/.git\/objects\///' | tr -d /)
for obj in $objects
  do
    echo $obj
    git cat-file -p $obj
  done
