#!/bin/bash

# Kill the process with the name aotonhwwouqvhw
pkill -f aotonhwwouqvhw

# Remove Logfiles
rm -f /home/spcast/SPCast/jingles/logs/*.log*

# Execute the spcast_jingles.liq with the name aotonhwwouqvhw
bash -c './spcast_jingles.liq --name "aotonhwwouqvhw"'
