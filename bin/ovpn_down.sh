#!/bin/sh
set -e

# Read env vars
source "$OPENVPN/ovpn_env.sh"

# UPnP port forwarding support
if [ "$OVPN_UPNP_PORT_FORWARD" == "1" ]; do
    /usr/bin/killall upnpd
fi
