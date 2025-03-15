#!/usr/bin/env bash
set -euo pipefail

case "$1" in
gpu)
  ORIGTEMP=$(cat /sys/class/hwmon/hwmon2/temp2_input)
  ;;
cpu)
  ORIGTEMP=$(cat /sys/class/hwmon/hwmon3/temp1_input)
  ;;
esac

echo "$(($ORIGTEMP / 1000))"
