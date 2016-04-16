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

function espeaker() {
  espeak "$@" 2>/dev/null
}

sleep 3
blinkstick --index 0 off
blinkstick --index 1 off
sleep 1
blinkstick --index 0 --pulse white
sleep 1

blinkstick --index 1 --pulse blue
espeaker "Hello from comp U Canvas"
sleep 2

blinkstick --index 1 --pulse blue
espeaker "I P address"
hostname -I | espeaker -s 100
sleep 2

blinkstick --index 1 --pulse blue
espeaker "repeating I P address"
hostname -I | espeaker -s 100
sleep 1

blinkstick --index 0 blue
blinkstick --index 1 green
