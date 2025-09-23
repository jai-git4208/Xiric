#!/bin/bash
# run_shell.sh - Runs shell.py with a colorful welcome message

# Exit immediately if a command exits with a non-zero status
set -e

# Function to print colored text
color_text() {
    local color=$1
    shift
    echo -e "\033[${color}m$*\033[0m"
}

# Optional: check if python3 is installed
if ! command -v python3 &> /dev/null
then
    color_text "1;31" "❌ Python3 is not installed. Install it first."
    exit 1
fi

# Print welcome message
color_text "1;36" "====================================="
color_text "1;35" "     Welcome to Xiric"
color_text "0;33" "  Made with ♥\040by Jaimin"
color_text "1;36" "====================================="
echo ""  # empty line

# Get the directory of this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run the Python script
python3 "$SCRIPT_DIR/shell.py"
