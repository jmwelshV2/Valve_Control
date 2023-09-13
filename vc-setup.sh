#!/bin/bash

# Update the system
apt update && apt upgrade -y

# Install necessary dependencies
apt install -y build-essential libusb-1.0-0-dev libglfw3-dev libudev-dev cmake libx11-xcb-dev libvulkan-dev libxcursor-dev libxi-dev libxrandr-dev libxxf86vm-dev

# Clone OpenHMD
cd /opt
git clone https://github.com/OpenHMD/OpenHMD.git

# Compile and install OpenHMD
cd OpenHMD
git checkout master # or replace 'master' with a specific release or commit ID
mkdir build
cd build
cmake ..
make
make install

# Clone FreePIE
cd /opt
git clone https://github.com/AndersMalmgren/FreePIE.git

# Compile and install FreePIE
cd FreePIE
./setup.sh

# Add a udev rule to allow access to the VR headset as a non-root user
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="28de", MODE="0666"' > /etc/udev/rules.d/60-valve-index.rules

# Reload udev rules
udevadm control --reload-rules
udevadm trigger

# Inform the user that the setup is complete
echo "Setup complete. Please reboot your system to apply all changes."
