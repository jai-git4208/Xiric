#!/bin/bash
# This script runs script.py

# Optional: check if python3 is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 is not installed. Install it first."
    exit 1
fi

# Run the Python script (same folder as this script)
python3 "$(dirname "$0")/shell.py"
