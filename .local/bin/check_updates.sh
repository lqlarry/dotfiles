#!/usr/bin/env bash

# Check for updates and store the output in a variable
updates=$(checkupdates)

# Count the number of lines in the output to get the update count
update_count=$(echo "$updates" | grep -c "")

# If the update count is zero, set it to "0" explicitly
if [ "$update_count" -eq 0 ]; then
    update_count="0"
fi

# Display the update count
echo "Number of updates available: $update_count"

