
#!/bin/bash

# Get total and used RAM
used=$(vm_stat | grep "Pages active" | awk '{print $3}' | sed 's/\.//')
free=$(vm_stat | grep "Pages free" | awk '{print $3}' | sed 's/\.//')
inactive=$(vm_stat | grep "Pages inactive" | awk '{print $3}' | sed 's/\.//')

# Pages are 4096 bytes, convert to MB
used_mb=$((used * 4096 / 1024 / 1024))
free_mb=$((free * 4096 / 1024 / 1024))
inactive_mb=$((inactive * 4096 / 1024 / 1024))

# Calculate total RAM and used RAM
total_mb=$((used_mb + free_mb + inactive_mb))
used_percentage=$((used_mb * 100 / total_mb))

# Output RAM usage as percentage
sketchybar --set $NAME label="$used_percentage%"

