#!/bin/sh

printf "Are you sure to clean the Trash folder? THIS ACT CANNOT BE UNDONE\n"
printf "Confirmation (Y/n): "
read -r confirmation

if [ "$confirmation" = "n" ] || [ "$confirmation" = "N" ]; then
    printf "Exiting program...\n"
    printf "Success!\n"
    exit 1
fi

rm -rf "$HOME"/.local/share/Trash/*
printf "Trash is successfully cleared!\n"
exit 0
