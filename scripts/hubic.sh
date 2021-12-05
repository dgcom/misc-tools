#!/bin/sh

rclone mount hubic: ~/MyHubic/ --vfs-cache-mode full
echo $?

