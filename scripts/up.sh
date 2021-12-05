#!/bin/bash

# Need to add snap updates

echo =========================================
echo Updating system
sudo apt update && sudo apt upgrade -y

echo =========================================
echo Updating flatpak

sudo flatpak update -y

echo =========================================
echo Updating rclone

sudo rclone selfupdate
