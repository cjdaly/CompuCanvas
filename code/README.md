
## CompuCanvas code

#### initial system setup

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
