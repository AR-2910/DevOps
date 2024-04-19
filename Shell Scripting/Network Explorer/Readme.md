# Network Explorer

This script analyzes network details including network interface, routing table, active connections, and DNS server information on a system.

## Used Commands

- `ip address show`: Displays network interface details.
- `ip route show`: Displays routing table details.
- `ss -tuln`: Displays active connections details.
- `systemd-resolve --status | grep "DNS Servers"`: Displays DNS server details.

## Use Cases

- Monitoring network configuration: Administrators can use this script to monitor the network configuration and troubleshoot any network-related issues.
- Analyzing routing information: System administrators can use the script to understand the routing table and ensure proper network routing.
- Checking active connections: Developers or network administrators can use the script to monitor active connections and identify any suspicious or unauthorized connections.
- Verifying DNS server configuration: Users can verify the DNS server configuration to ensure proper DNS resolution.

## How to Run

To run the script, navigate to its directory in your terminal and execute the following command:
`./Network.sh`

**Note**: Before running the script, make sure to download or update the required dependencies/libraries on your system. You may need to install the following packages:
- `iproute2`: Provides the `ip` command for network configuration.
- `systemd-resolved`: Provides the `systemd-resolve` command for DNS resolution.
- `iproute2`: Part of the `iproute2` package, used for displaying socket statistics.
- `ss`: Provides the `ss` command for displaying socket statistics.

You can typically install these dependencies using your system's package manager.

