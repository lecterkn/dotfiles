#!/bin/bash

# 現在のスペースを取得
CURRENT_SPACE=$(yabai -m query --spaces | jq '.[] | select(.focused==1).index')

# 全スペースの状態を更新
for i in {1..5}; do
    if [[ $i -eq $CURRENT_SPACE ]]; then
        sketchybar --set space.$i background.drawing="$SELECTED"
    else
        sketchybar --set space.$i
    fi
done

