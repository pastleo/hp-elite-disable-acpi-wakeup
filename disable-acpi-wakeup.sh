#!/bin/bash

if [ ":$@" == ":" ]
then
  echo "usage: $0 device_keyword"
  exit 255
fi

echo "disabling acpi wakeup by device_keyword: $1"
date

for device in `cat /proc/acpi/wakeup | grep $1 | cut -f1`;
do
  state=`cat /proc/acpi/wakeup | grep $device | head -1 | cut -f3 | cut -d' ' -f1 | tr -d '*'`
  printf "device = $device, state = $state"
  if [ "$state" == "enabled" ]
  then
    printf ", disabling..."
    echo $device > /proc/acpi/wakeup
  fi
  echo ""
done
