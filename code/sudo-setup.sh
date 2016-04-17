#!/bin/bash
####
# Copyright (c) 2016 Chris J Daly (github user cjdaly)
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#   cjdaly - initial API and implementation
####

COMPUCANVAS_HOME=/home/pi/CompuCanvas

apt-get update
apt-get upgrade -y
apt-get install espeak mpg321 -y
pip install blinkstick
blinkstick --add-udev-rule

if [ ! -f /etc/modprobe.d/alsa-base.conf ]; then
  echo "Copying alsa-base.conf to /etc/modprobe.d ..."
  cp "$COMPUCANVAS_HOME/code/alsa-base.conf" /etc/modprobe.d
fi

if ! grep "boot-sequence" /etc/rc.local
then
  echo "Adding boot-sequence script to /etc/rc.local ..."
  sed -i -e "s:^exit 0$:$COMPUCANVAS_HOME/code/boot-sequence.sh\n\nexit 0:" /etc/rc.local
fi
