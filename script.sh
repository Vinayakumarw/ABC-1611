#!/bin/bash
#Author: Vinay
#Desc: script
#Date: 19/4/2025

INPUT=$1
TARGET_DIR="/tmp/target"

if [ "$INPUT" = "1" ]; then
    echo "Creating folder and file..."
    mkdir -p "$TARGET_DIR"
    touch "$TARGET_DIR/file.txt"
    echo "File created at $TARGET_DIR/file.txt"
elif [ "$INPUT" = "0" ]; then
    echo "Deleting folder..."
    rm -rf "$TARGET_DIR"
    echo "Deleted $TARGET_DIR"
else
    echo "Invalid input! Use 1 (create) or 0 (delete)."
fi

