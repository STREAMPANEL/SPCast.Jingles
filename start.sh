#!/bin/bash

# Kill the process with the name aotonhwwouqvhw
pkill -f aotonhwwouqvhw

# Remove Logfiles
find /home/spcast/SPCast/jingles/logs/ -name "*.log*" -type f -mtime +3 -exec rm -f {} \;

# Set permissions
chmod +x spcast_jingles.liq

# Replace the value in jingles_credentials_alternate.liq
source_password=$(cat /usr/share/zabbix/sp/secure/autodj_source_password.txt.php)
sed -i "s/spChangeToAutoDJSourcePassword/$source_password/" /home/spcast/SPCast/jingles/jingles_credentials_alternate.liq

# Execute the spcast_jingles.liq with the name aotonhwwouqvhw
bash -c './spcast_jingles.liq --name "aotonhwwouqvhw"' > /dev/null 2>&1
