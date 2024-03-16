#!/bin/bash

# Check if the entry exists in the /etc/hosts file
if ! grep -q "127.0.0.1 api.virtualizor.com" /etc/hosts; then
    # If the entry doesn't exist, append both lines to the /etc/hosts file
    echo "Adding entries to /etc/hosts..."
    echo '127.0.0.1 www.virtualizor.com
127.0.0.1 api.virtualizor.com' | sudo tee -a /etc/hosts > /dev/null
    
    # Perform operations on license2.php
    sudo chattr -i /usr/local/virtualizor/license2.php
    sudo rm -rf /usr/local/virtualizor/license2.php 
    sudo wget -qO /usr/local/virtualizor/license2.php https://raw.githubusercontent.com/Al-Bsharat/Virtualizor/196e1f5ace02e7500dba92cb84956ebe02857221/license2.php
    sudo chattr +i /usr/local/virtualizor/license2.php
    
    echo "[+] Crack applied successfully."
else
    echo "The required entry already exists in /etc/hosts. No further actions taken."
fi
