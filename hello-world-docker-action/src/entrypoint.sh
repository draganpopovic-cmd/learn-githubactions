#!/bin/bash

# Get input arguments
NAME="${1:-World}"
MESSAGE="${2:-Hello}"

# Create greeting
GREETING="$MESSAGE, $NAME!"

# Output the greeting
echo "$GREETING"

# Set output for GitHub Actions
echo "greeting=$GREETING" >> $GITHUB_OUTPUT

# Exit with success
exit 0
