#!/bin/bash

if [ -n "$1" ] ; then
    WL=$1
else
    WL=$USER-$(date +%s)
fi

echo "Creating workload: $WL"

cube workload create -n "$WL" && \
remove_protection.sh "$WL"
setup_workload_repo.sh "$WL"
