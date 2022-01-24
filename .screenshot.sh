#!/usr/bin/env bash

path="~/Pictures/Screenshots"

scrot -s "%Y-%m-%d-%T-screenshot.png" -e "mv \$f $path" 
