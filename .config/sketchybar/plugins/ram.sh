#!/bin/bash

MEM_INFO=$(vm_stat)
PAGE_SIZE=$(vm_stat | grep "page size of" | awk '{print $8}')
USED_PAGES=$(echo "$MEM_INFO" | grep "Pages active" | awk '{print $3}' | tr -d '.')
FREE_PAGES=$(echo "$MEM_INFO" | grep "Pages free" | awk '{print $3}' | tr -d '.')

USED_RAM=$((USED_PAGES * PAGE_SIZE / 1024 / 1024))
FREE_RAM=$((FREE_PAGES * PAGE_SIZE / 1024 / 1024))
TOTAL_RAM=$((USED_RAM + FREE_RAM))

RAM_PERCENT=$((USED_RAM * 100 / TOTAL_RAM))

sketchybar --animate tanh 20 --set $NAME label="$RAM_PERCENT%"
