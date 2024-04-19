#!/bin/bash

####################################
# Author: Abhinav
#
# Date: 1/2/24
#
# Description: This script analyzes node health by checking disk usage, memory usage, processor count,
# and Python process IDs.
#
# Version: v1
####################################

# error handling
set -e 
set -o pipefail 

# Display disk usage
df -h

# Display memory usage
free -g

# Display processor count
nproc

# Display Python process IDs
ps -ef | grep python | awk -F " " '{print $2}'
