# Install Steps  

## Get git working  
sudo dnf install git  
git config --global user.name "My Name"  
git config --global user.email "myemail@example.com"  
git config --global init.defaultBranch main  
git config --global credential.helper store  

## RPM Build Tools
sudo dnf install -y rpmdevtools rpmlint
Validate ~/.rpmmacros is in place and set correctly


