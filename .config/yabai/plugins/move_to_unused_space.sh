#!/bin/bash

CURRENT_WINDOW_LENGTH=$(yabai -m query --spaces --space | jq '.windows | length')

if [ $CURRENT_WINDOW_LENGTH -le 1 ]; then
    exit 0
fi

WINDOW_SUB_ROLE=$(yabai -m query --windows --window $YABAI_WINDOW_ID | jq -r '.subrole')
if [[ "$WINDOW_SUB_ROLE" == "AXDialog" ]]; then
    exit 0
fi

# 空いているスペースを取得
EMPTY_SPACE=$(yabai -m query --spaces | jq '.[] | select(.windows == []) | .index' | head -n 1)

# 空いているスペースがある場合、ウィンドウを移動
if [ -n "$EMPTY_SPACE" ]; then
  yabai -m window "$YABAI_WINDOW_ID" --space "$EMPTY_SPACE"
  yabai -m space --focus "$EMPTY_SPACE"
  yabai -m window --focus "$YABAI_WINDOW_ID"
fi

