#!/bin/bash

# Ensure the script is run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Update the system and install the necessary dependencies for the entire setup
apt update && apt upgrade -y
apt install -y build-essential libusb-1.0-0-dev libglfw3-dev libudev-dev cmake libx11-xcb-dev libvulkan-dev libxcursor-dev libxi-dev libxrandr-dev libxxf86vm-dev mesa-common-dev libvulkan-dev libdrm-dev libavcodec-dev libavformat-dev libswresample-dev libv4l-dev libudev-dev libhidapi-dev

# Step to install XRDesktop, a VR enabled environment for Linux desktops
sudo apt-add-repository ppa:kgavriltsev/xrdesktop-daily -y
sudo apt update
sudo apt install xrdesktop -y

# Cloning, building and installing OpenHMD, which is a library for HMD devices 
cd /opt
git clone https://github.com/OpenHMD/OpenHMD.git
cd OpenHMD
git checkout master
mkdir build
cd build
cmake ..
make
make install

# Cloning, building and installing FreePIE, a programmable input emulator that allows configuring arbitrary input devices
cd /opt
git clone https://github.com/AndersMalmgren/FreePIE.git
cd FreePIE
./setup.sh

# Cloning, building and installing Monado, an open-source runtime for XR (VR and AR) 
cd /opt
git clone https://gitlab.freedesktop.org/monado/monado.git
cd monado
./autogen.sh
./configure --prefix=/usr
make
sudo make install

# Adding a udev rule to allow non-root users to have access to the VR headset
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="28de", MODE="0666"' > /etc/udev/rules.d/60-valve-index.rules

# Reloading udev rules to apply the new rule without needing a reboot
udevadm control --reload-rules
udevadm trigger

# Inform the user that the setup is complete and a reboot is necessary to apply all the changes
echo "Setup complete. Please reboot your system to apply all changes."
