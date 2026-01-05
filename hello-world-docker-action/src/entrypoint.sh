#!/bin/bash

# Get input arguments from GitHub Actions
NAME="${INPUT_NAME:-World}"
MESSAGE="${INPUT_MESSAGE:-Hello}"

# Create greeting
GREETING="$MESSAGE, $NAME!"

# Output the greeting
echo "$GREETING"

# Set output for GitHub Actions
echo "greeting=$GREETING" >> $GITHUB_OUTPUT

# Exit with success
exit 0
