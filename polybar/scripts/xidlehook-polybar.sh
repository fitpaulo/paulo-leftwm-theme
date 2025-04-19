# #!/bin/bash
# SOCKET="/tmp/xidlehook.sock"

# # Check if xidlehook is running and socket exists
# if ! pgrep -x xidlehook > /dev/null || [ ! -S "$SOCKET" ]; then
#     printf "⚠️\n"  # Warning icon if xidlehook isn't running
#     exit 0
# fi

# # Query xidlehook state for timer 0
# STATE=$(xidlehook-client --socket /tmp/xidlehook.sock query 2>/dev/null | grep -A 9 'timer: 0' | grep 'disabled' | awk '{print $2}' | sed 's/,//')
# if [ -z "$STATE" ]; then
#     printf "❓\n"  # Fallback if state parsing fails
#     exit 0
# fi

# if [ "$STATE" = "true" ]; then
#     printf "\n"  # FontAwesome unlock (U+F09C) - Disabled
# else
#     printf "\n"  # FontAwesome lock (U+F023) - Enabled
# fi
#!/bin/bash
SOCKET="/tmp/xidlehook.sock"

# Check if xidlehook is running and socket exists
if ! pgrep -x xidlehook > /dev/null || [ ! -S "$SOCKET" ]; then
    printf "%%{F#ff5455}⚠️%%{F-}\n"  # Red warning icon
    exit 0
fi

# Query xidlehook state for timer 0
STATE=$(xidlehook-client --socket /tmp/xidlehook.sock query 2>/dev/null | grep -A 9 'timer: 0' | grep 'disabled' | awk '{print $2}' | sed 's/,//')
if [ -z "$STATE" ]; then
    printf "%%{F#ffb86c}❓%%{F-}\n"  # Orange question mark
    exit 0
fi

if [ "$STATE" = "true" ]; then
    printf "%%{F#FBC02D}%%{F-}\n"  # Amber for disabled (unlocked)
else
    printf "%%{F#bd93f8}%%{F-}\n"  # Purple for enabled (locked)
fi
