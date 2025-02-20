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

## Prepare RPM build directory
Create the RPM build tree  
rpmdev-setuptree  

Copy rpmbuild tree from this repo to the build tree  
cp -r ~/Workspace/wmaker-workstation/rpmbuild/ ~  

## Build Window Maker RPM
sh ~/rpmbuild/build-wmaker.sh

## Install Window Maker from the built RPM
sh ~/Workspace/wmaker-workstation/20-install-wmaker.sh  

## Copy X related startup scripts
cp ~/Workspace/wmaker-workstation/home/.xinitrc ~  
cp ~/Workspace/wmaker-workstation/home/.Xdefaults ~  

## Start X  
startx  




