# wmaker-workstation

# Icons
GNUstep https://www.gnome-look.org/p/1239539
https://github.com/alexmyczko/gnustep-icons
https://github.com/gnustep/icons-rik

Chicago 95 https://github.com/grassmunk/Chicago95
Chicago 95 Ectras https://github.com/grassmunk/Chicago95_Extras

https://kojipkgs.fedoraproject.org//packages/WindowMaker/0.96.0/3.fc40/src/WindowMaker-0.96.0-3.fc40.src.rpm

Get a spec file to build the RPM from, or create one
In this case we are going to use a Fedora spec file to start with.
https://koji.fedoraproject.org/koji/buildinfo?buildID=2367182
Get the file WindowMaker-0.96.0-3.fc40.src.rpm

Extract the spec file
rpm2cpio WindowMaker-0.96.0-3.fc40.src.rpm | cpio -idmv

Set up RPM build tools
https://www.redhat.com/sysadmin/create-rpm-package
sudo dnf install -y rpmdevtools rpmlint
rpmdev-setuptree

Copy spec file from Fedora src RPM, put in ~/rpmbuild/SPECS
Copy source file from GitHub src tgz, put in ~/rpmbuild/Sources

Build WindowMaker
rpmlint ~/rpmbuild/SPECS/WindowMaker.spec 

rpmbuild -bs ~/rpmbuild/SPECS/WindowMaker.spec 
rpmbuild -bb ~/rpmbuild/SPECS/WindowMaker.spec
rpmbuild -ba ~/rpmbuild/SPECS/WindowMaker.spec

Install Window Maker build dependancies

sudo dnf install libXext-devel libXft-devel libXinerama-devel libXmu-devel libXpm-devel libXrandr-devel libXrender-devel libjpeg-devel 
sudo dnf install  ImageMagick-devel automake chrpath fontconfig-devel gettext-devel giflib-devel libICE-devel libSM-devel libX11-devel 
sudo dnf install  libpng-devel libtiff-devel libtool pango-devel xorg-x11-proto-devel 

Ready to install RPM lives in  ~/rpmbuild/RPMS/x86_64/WindowMaker-0.96.0-0.el8.x86_64.rpm
sudo dnf install ~/rpmbuild/RPMS/x86_64/WindowMaker-0.96.0-0.el8.x86_64.rpm
