#!/bin/bash

# Terminate already running instances
#killall -q redshift
#pkill -TERM redshift

# Wait until the processes have been shut down
#while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done

# Clean changes
#redshift -x

# Start redshift
#redshift &

pgrep redshift && pkill -TERM redshift || redshift &
