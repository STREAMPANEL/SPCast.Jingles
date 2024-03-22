#!/bin/bash

# Kill the process with the name aotonhwwouqvhw
pkill -f aotonhwwouqvhw

# Remove Logfiles
rm -f /home/spcast/SPCast/jingles/logs/*.log*

# Set permissions
chmod +x spcast_jingles.liq

# Execute the spcast_jingles.liq with the name aotonhwwouqvhw
bash -c './spcast_jingles.liq --name "aotonhwwouqvhw"' > /dev/null 2>&1
