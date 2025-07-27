#!/bin/bash

# Count the number of connected monitors
monitor_count=$(xrandr --query | grep " connected" | wc -l)

# Check if the count is greater than 1
if [ "$monitor_count" -gt 1 ]; then
    xrandr --output HDMI-1 --auto
else
    echo "Only one monitor connected. No changes made."
fi

