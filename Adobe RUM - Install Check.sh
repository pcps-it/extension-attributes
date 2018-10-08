#!/bin/bash

if [ -e /usr/local/bin/RemoteUpdateManager  ]; then
    result="Installed"
else
    result="Not Installed"
fi
        
echo "<result>${result}</result>"