#!/usr/bin/env bash

# This script will show the total free space on a Linux system.

# Get the list of all mounted file systems.
mountpoints=$(df -P | awk '{print $6}')

# For each mounted file system, get the free space.
for mountpoint in $mountpoints; do
  free_space=(df -P "mountpoint" | awk '{print $4}')
  echo "Free space on $mountpoint: $free_space"
done
