#!/usr/bin/env bash


# Specify the path to the weather.cache file
file_path="$HOME/.local/bin/weather.cache"

# Check if the file exists
if [ ! -f "$file_path" ]; then
  echo "File $file_path does not exist."
  exit 1
fi

# Read the file line by line
while IFS= read -r line; do
line="☀️ $line"

  # Set the root window property using xsetroot
  xsetroot -name "$line"
done < "$file_path"

