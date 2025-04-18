#!/bin/bash

FOCUSED_WINDOW_SPACE=$(yabai -m query --windows --window | jq '.space')
FOCUSED_SPACE=$(yabai -m query --spaces --space | jq '.index')

if [[ "$FOCUSED_SPACE" == "$FOCUSED_WINDOW_SPACE" ]]; then
    exit 0
fi

CURRENT_SPACE_WINDOW=$(yabai -m query --windows --space | jq -r '.[0].id')
yabai -m window --focus "$CURRENT_SPACE_WINDOW"
