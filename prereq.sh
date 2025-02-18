sudo dnf config-manager --set-enabled powertools plus devel
sudo dnf install epel-release
sudo dnf install \
git \
rpmdevtools rpmlint make \
libXext-devel libXft-devel libXinerama-devel libXmu-devel libXpm-devel libXrandr-devel libXrender-devel libjpeg-devel \
ImageMagick-devel automake chrpath fontconfig-devel gettext-devel giflib-devel libICE-devel libSM-devel libX11-devel \
libpng-devel libtiff-devel libtool pango-devel xorg-x11-proto-devel
