#!/bin/bash

color=$(sed -n 3p ~/.cache/wal/colors)
color2=$(sed -n 7p ~/.cache/wal/colors)

# set theme for graph
sed -i "s|#define COLOR.*$|#define COLOR @fg:mix("$color", "$color2", clamp(pos / GRADIENT, 0, 1))|g" ~/.config/glava/graph.glsl

# kill and restart glava
killall -q glava
sleep 1
i3-msg "exec --no-startup-id glava --desktop"
