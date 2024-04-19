
# Node Health Analyzer

This script analyzes the health of a node by providing information about disk usage, memory usage, processor count, and Python process IDs.

## Used Commands
- `df -h`: Displays disk usage.
- `free -g`: Displays memory usage.
- `nproc`: Displays the number of processors.
- `ps -ef | grep python | awk -F " " '{print $2}'`: Displays the process IDs of Python processes.

## Error Handling
- **set -e**: Causes the script to exit immediately if any command fails, preventing further execution.
- **set -o pipefail**: Ensures that if any command in a pipeline fails, the entire pipeline fails, improving error handling in pipelines.

## Use Cases
- Monitoring server health: Administrators can use this script to monitor the health of servers and identify potential issues related to disk space, memory usage, and processor utilization.
- Troubleshooting Python processes: Developers can use this script to quickly identify Python processes running on the system and troubleshoot any issues related to them.
- Resource optimization: System administrators can use the information provided by this script to optimize resource allocation and improve overall system performance.

## How to Run
To run the script, navigate to its directory in your terminal and execute the following command:
`./Node_Health.sh`

