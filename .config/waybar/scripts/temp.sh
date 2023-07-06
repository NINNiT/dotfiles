#!/usr/bin/env bash
set -euo pipefail

case "$1" in
    gpu)
        ORIGTEMP=$(cat /sys/class/hwmon/hwmon3/temp2_input)
        ;;
    cpu)
        ORIGTEMP=$(cat /sys/class/hwmon/hwmon1/temp1_input)
        ;;
esac

echo "$(($ORIGTEMP / 1000))"
