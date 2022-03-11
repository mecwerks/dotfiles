#!/bin/bash

color=$(sed -n 3p ~/.cache/wal/colors)
color2=$(sed -n 7p ~/.cache/wal/colors)

# glava
sed -i "s|#define COLOR.*$|#define COLOR @fg:mix("$color", "$color2", clamp(pos / GRADIENT, 0, 1))|g" ~/.config/glava/graph.glsl

# dunst

# alacritty


# pc lights
openrgb --mode breathing --color "${color2/'#'}" --loglevel 0
