#!/bin/bash

echo =========================================
echo Updating system
sudo apt update && sudo apt upgrade -y

echo =========================================
echo Updating flatpak
sudo flatpak update -y

echo =========================================
echo Updating snap
sudo snap refresh

echo =========================================
echo Updating rclone
sudo rclone selfupdate

echo =========================================
echo autoremove
sudo apt autoremove -y

