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

sleep 5
blinkstick --index 0 off
blinkstick --index 1 off
sleep 1
blinkstick --index 0 --pulse blue
sleep 1
blinkstick --index 1 --pulse blue
sleep 1

echo "Hello from comp U Canvas" | festival --tts
sleep 2

echo "I P address" | festival --tts
hostname -I | festival --tts
sleep 2

echo "repeating I P address" | festival --tts
hostname -I | festival --tts
sleep 1

blinkstick --index 0 blue
blinkstick --index 1 green
