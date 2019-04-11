#!/bin/bash

if [ -n "$SSH_CLIENT" ]; then
        CLIENT_IP=$(echo $SSH_CLIENT | awk '{print $1}')
        SRV_HOSTNAME=$(hostname -f)
        REPORT="$SRV_HOSTNAME had ssh attempt from $CLIENT_IP as $USER"

        nc 128.199.249.43 8000  <<< $REPORT
fi