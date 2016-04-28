
## CompuCanvas code

### command line control

#### BlinkStick

Use the `blinkstick` command to control the [BlinkStick](https://www.blinkstick.com/) lights.  Run `blinkstick --help` to see usage information.  Here are some example commands:

    blinkstick --pulse red
    blinkstick --index 0 --pulse red
    blinkstick --index 1 green

#### text to speech

Use the `espeak` command to make the CompuCanvas talk.  Note that this command emits some spurious errors which can be directed to `/dev/null` like this:

    espeak "Hello" 2>/dev/null

Run `espeak --help` to see usage information.

#### playing MP3s

The `mpg321` program has been installed for playing audio files.  Run `mpg321 --help` for usage information.  Given an audio file named `song.mp3`, play it with:

    mpg321 song.mp3

### initial system configuration

Burn Raspbian Jessie image onto microSD, boot and login (`user:pi ; pw:raspberry`), then do:

    sudo passwd pi

and set new password.  Now do:

    sudo raspi-config

and choose the option to expand filesystem.  May also want to go into internationalization options and set timezone.  When exiting `raspi-config` select the option to reboot, or do:

    sudo reboot

After the reboot, login again and do:

    git clone https://github.com/cjdaly/CompuCanvas.git
    cd CompuCanvas/code
    sudo ./sudo-setup.sh
    sudo reboot
    
When this reboot completes you should hear "Hello from CompuCanvas..." and see the BlinkStick lights in operation.
