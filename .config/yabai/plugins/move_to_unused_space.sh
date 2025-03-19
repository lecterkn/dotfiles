#!/bin/bash

# 空いているスペースを取得
EMPTY_SPACE=$(yabai -m query --spaces | jq '.[] | select(.windows == []) | .index' | head -n 1)

# 空いているスペースがある場合、ウィンドウを移動
if [ -n "$EMPTY_SPACE" ]; then
  yabai -m window "$YABAI_WINDOW_ID" --space "$EMPTY_SPACE"
  yabai -m space --focus "$EMPTY_SPACE"
fi

