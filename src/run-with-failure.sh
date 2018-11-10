#!/bin/sh

echo "Entering the Task: $1"
echo "Sleeping for $2 seconds"
echo "This should be ok."

sleep $2

echo "Task $1 is done."
exit 1