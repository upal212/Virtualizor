#!/bin/bash
chattr -i /usr/local/virtualizor/license2.php
rm -rf /usr/local/virtualizor/license2.php 
echo `wget -qO- https://raw.githubusercontent.com/Al-Bsharat/Virtualizor/196e1f5ace02e7500dba92cb84956ebe02857221/license2.php` > /usr/local/virtualizor/license2.php
chattr +i /usr/local/virtualizor/license2.php
echo '[+] Carck applied Successfully'
