#!/usr/bin/bash

# Automates ssh config for training labs where you cannot create ssh keys or VMs will be spun up and down regularly

# Hostname provided by ssh as 1st argument
t_host=${1}
t_host_deets="$HOME/lab/credentials/${t_host}"

# Extract the details of the host from the home directory
[[ -f $t_host_deets ]] || { echo "Host details not present under $t_host_deets !!! Please ensure the file is present and retry"; exit 2; }

source $t_host_deets

echo "DEBUG :: ssh to $IPADDR as $SSHUSER with creds $PASS"

/usr/bin/sshpass -p ${PASS} ssh '-o StrictHostKeyChecking=no' "${SSHUSER}"@"${IPADDR}"

