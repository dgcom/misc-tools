#!/bin/sh

rclone mount MyOD: ~/MyOD/ --vfs-cache-mode full
echo $?
# printing rc won't work since the script is being killed by Ctrl+C
# If unmount failed, run:
# fusermount -u ~/MyOD

