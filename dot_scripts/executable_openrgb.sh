#!/bin/bash

color=$(sed -n 3p ~/.cache/wal/colors)

openrgb --mode breathing --color "${color/'#'}" --loglevel 0
