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
### Create the RPM build tree  
rpmdev-setuptree  

### Copy rpmbuild tree from this repo to the build tree  
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

## Minor Tweaks  
### Set default term app for XFCE apps
echo -e "TerminalEmulator=xterm\n" | tee ~/.config/xfce4/helpers.rc > /dev/null  

### Set GTK theme to a NeXTSTEP/Window Maker style
mkdir  ~/.local/share/themes  
cp -R ~/Workspace/wmaker-workstation/theme/wmakerStepsBack/ ~/.local/share/themes/.  
cp -R ~/Workspace/wmaker-workstation/home/.config ~  
cp ~/Workspace/wmaker-workstation/home/.gtkrc-2.0 ~  
cp ~/Workspace/wmaker-workstation/home/.xsessionrc ~ 

### Set Icon theme to Chicago95
cd ~/Workspace  
git clone https://github.com/grassmunk/Chicago95.git  
mkdir  ~/.local/share/icons  
cp -r ~/Workspace/Chicago95/Icons/* ~/.local/share/icons/  

### Get the Propaganda nackgrounds
cd ~/Workspace  
git clone https://github.com/BenjaminHCCarr/PropagandaTiles.git
cp ~/Workspace/PropagandaTiles/Images/* ~/GNUstep/Library/WindowMaker/Backgrounds/



 





