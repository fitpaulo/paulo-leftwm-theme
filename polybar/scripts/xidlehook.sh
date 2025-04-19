#!/bin/bash
SOCKET="/tmp/xidlehook.sock"

# Check if xidlehook is running and socket exists
if ! pgrep -x xidlehook > /dev/null || [ ! -S "$SOCKET" ]; then
    printf "⚠️\n"  # Warning icon if xidlehook isn't running
    exit 0
fi

# Query xidlehook state for timer 0
STATE=$(xidlehook-client --socket /tmp/xidlehook.sock query 2>/dev/null | grep -A 9 'timer: 0' | grep 'disabled' | awk '{print $2}' | sed 's/,//')
if [ -z "$STATE" ]; then
    printf "❓\n"  # Fallback if state parsing fails
    exit 0
fi

if [ "$STATE" = "true" ]; then
    printf "\n"  # FontAwesome unlock (U+F2FC) - Disabled
else
    printf "󰌾\n"  # FontAwesome lock (U+F023) - Enabled
fi
