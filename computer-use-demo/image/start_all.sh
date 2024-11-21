#!/bin/bash

set -e

export DISPLAY=:${DISPLAY_NUM}
./xvfb_startup.sh
./mutter_startup.sh
./x11vnc_startup.sh
./xfce4_startup.sh
