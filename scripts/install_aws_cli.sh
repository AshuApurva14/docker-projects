#!/usr/bin/env bash

set -e

echo -e " AWS CLI installtion started!\n"

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install


echo  -e "\nInstllation completed"
