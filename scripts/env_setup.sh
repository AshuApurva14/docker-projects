#!/usr/bin/env bash

set -e

echo -e "\n======================== is virtual env actiavted? =======================\n"
echo -e "Checking ............!\n"

if [[ -z "$VIRTUAL_ENV" ]]; then

    echo "No Virtual environment is active"
    echo -e "Setup virtual environment\n"
    python3 -m venv venv
    source venv/bin/activate
    echo -e "Virtual Environment created and enabled: $VIRTUAL_ENV\n"

else
    
    echo "Active virtual environment: $VIRTUAL_ENV"
fi




