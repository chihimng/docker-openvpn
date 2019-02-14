#!/bin/sh
set -e

# Read env vars
source "$OPENVPN/ovpn_env.sh"

# UPnP port forwarding support
if [ "$OVPN_UPNP_PORT_FORWARD" == "1" ]; do
    [ -z "$OVPN_NATDEVICE" ] && OVPN_NATDEVICE=eth0
    /usr/sbin/upnpd $OVPN_NATDEVICE $OVPN_DEVICE$OVPN_DEVICEN
fi
