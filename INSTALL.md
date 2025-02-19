# Install Steps  
From a fresh install of Rocky 8.10 server  

## Get base updates done  
sudo dnf update  

## Get git working  
sudo dnf install git  
git config --global user.name "My Name"  
git config --global user.email "myemail@example.com"  
git config --global init.defaultBranch main  
git config --global credential.helper store  

## Clone this repo locally  
mkdir ~/Workspace   
git clone https://github.com/ghastman/wmaker-workstation.git ~/Workspace/wmaker-workstation  

## Add needed repositories  
sh ~/Workspace/wmaker-workstation/00-enable.repos  

## Install packages  
sh ~/Workspace/wmaker-workstation/10-install-packages.sh  

## Install Window Maker from this repo  
sh ~/Workspace/wmaker-workstation/20-install-wmaker.sh  

## Copy X related startup scripts
cp ~/Workspace/wmaker-workstation/home/.xinitrc ~
cp ~/Workspace/wmaker-workstation/home/.Xdefaults ~


## RPM Build Tools  
Validate ~/.rpmmacros is in place and set correctly   
rpmdev-setuptree  
Validate ~/Workspace/RPMbuild tree has been built.  

## Build WindowMaker-0.96.0  
Extract the spec file from the Fedora 40 Source RPM  
rpm2cpio WindowMaker-0.96.0-3.fc40.src.rpm | cpio -idmv  

Move the resulting files to the ~/Workspace/RPMbuild tree  
mv WindowMaker-WMRootMenu-fedora ~/Workspace/RPMbuild/SOURCES/.  
mv WindowMaker-0.96.0.tar.gz ~/Workspace/RPMbuild/SOURCES/.  
mv WindowMaker.spec ~/Workspace/RPMbuild/SPECS/.  

rpmlint ~/Workspace/RPMbuild/SPECS/WindowMaker.spec   
rpmbuild -bs ~/Workspace/RPMbuild/SPECS/WindowMaker.spec  
rpmbuild -bb ~/Workspace/RPMbuild/SPECS/WindowMaker.spec  
rpmbuild -ba ~/Workspace/RPMbuild/SPECS/WindowMaker.spec  

## Install the built WindowMaker RPM
sudo dnf install ~/Workspace/RPMbuild/RPMS/x86_64/WINGs-libs-0.96.0-3.el8.x86_64.rpm
sudo dnf install ~/Workspace/RPMbuild/RPMS/x86_64/WindowMaker-0.96.0-3.el8.x86_64.rpm




