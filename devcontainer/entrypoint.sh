#!/bin/bash
#
# Determine uid gid based on a given mount
#

# Add local user
#

echo "Starting with $NUSER UID: $UID"
export HOME=/home/$NUSER
useradd --shell /bin/bash -u $UID -o -c "" -m $NUSER -g $GID
echo "Done..."

su - $NUSER
