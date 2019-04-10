#!/bin/bash

if [ -n "$SSH_CLIENT" ]; then
        CLIENT_IP=$(echo $SSH_CLIENT | awk '{print $1}')
        SRV_HOSTNAME=$(hostname -f)
        REPORT="$SRV_HOSTNAME had ssh attempt from $CLIENT_IP as $USER"

        nc 46.51.220.145 8999  <<< $REPORT
fi