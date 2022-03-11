#!/bin/bash

systemctl --user start pulseaudio.socket
sleep 2
pywal-discord
$HOME/.config/polybar/launch.sh --forest
$HOME/.scripts/glava.sh
$HOME/.scripts/openrgb.sh
