#!/bin/bash

FOCUSED_SPACE=$(yabai -m query --spaces --space | jq '.index')
UNFOCUSED_WINDOW_SPACE=$(yabai -m query --windows)

echo "$UNFOCUSED_WINDOW_SPACE" | jq -c '.[]' | while IFS= read -r window; do
    window_id=$(echo "$window" | jq -r '.id')
    if [[ $(echo "$window" | jq -r '.space') == "$FOCUSED_SPACE" ]]; then
        if [[ "$(echo "$window" | jq '.has-focus')" == "true" ]]; then
            yabai -m window "$window_id" --opacity 1.0
        else
            yabai -m window "$window_id" --opacity 1.0
        fi
    else
        # if [[ $(echo "$window" | jq -r '.focused') == "true" ]]; then
        #     yabai -m window "$window_id" --unfocus
        # fi
        yabai -m window "$window_id" --opacity 0.5
    fi
done
