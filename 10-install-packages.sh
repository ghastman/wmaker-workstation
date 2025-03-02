# base X-Windows
sudo dnf group install base-x 
sudo dnf install xterm dbus
# development tools
sudo dnf install git rpmdevtools rpmlint make automake chrpath
# Window Maker development libraries
sudo dnf install libXext-devel libXft-devel libXinerama-devel \
libXmu-devel libXpm-devel libXrandr-devel libXrender-devel \
libjpeg-devel ImageMagick-devel fontconfig-devel gettext-devel \
giflib-devel libICE-devel libSM-devel libX11-devel libpng-devel \
libtiff-devel libtool pango-devel xorg-x11-proto-devel  
# VSCodium and Chromium - free as in speech
sudo dnf install chromium codium
# Visual Studio Code - free as in beer
# code or code-insiders
sudo dnf install code 
# Mozilla Firefox
sudo dnf install firefox
# Google Chrome
sudo dnf install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
# Keyring
sudo dnf install gnome-keyring seahorse
# File Manager
sudo dnf install Thunar thunar-archive-plugin
# Basic tools
sudo dnf install mousepad ristretto file-roller
# Terminus font
sudo dnf install terminus-fonts
# Eclipse IDE
sudo dnf install eclipse-platform