#!/bin/bash

set -e

DPMS_STANDBY_TIME=${DPMS_STANDBY_TIME:-300}
DPMS_SUSPEND_TIME=${DPMS_SUSPEND_TIME:-300}
DPMS_OFF_TIME=${DPMS_OFF_TIME:-300}
DPMS_WATCHDOG_SLEEP_TIME=${DPMS_WATCHDOG_SLEEP_TIME:-60}

while true
do
	sleep "$DPMS_WATCHDOG_SLEEP_TIME" # sleep first as the setting appears to get cleared upon login/unlock;
	                                  # this should allow the setting to take place sooner, as the unlock happens before the sleep is finished
	xset dpms "$DPMS_STANDBY_TIME" "$DPMS_SUSPEND_TIME" "$DPMS_OFF_TIME"
done

