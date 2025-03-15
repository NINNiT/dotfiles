#!/bin/bash

# Get a list of all active connections
active_connections=$(nmcli con show --active | grep -i 'vpn' | awk '{print $1}')

# Disconnect each active OpenVPN connection
for conn in $active_connections; do
  nmcli con down id "$conn"
  echo "Disconnected VPN connection: $conn"
done
