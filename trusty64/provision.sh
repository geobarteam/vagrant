sudo apt-get install console-common
sudo dpkg-reconfigure keyboard-configuration
sudo apt-get install dkms
sudo apt-get install git
sudo apt-get install --no-install-recommends ubuntu-desktop
sudo apt-get install virtualbox-guest-utils virtualbox-guest-x11  virtualbox-guest-dkms

sudo apt-get install nodejs npm 
sudo apt-get install nodejs-legacy
sudo apt-get install build-essential openssl libssl-dev curl
sudo npm install -g -yo
sudo npm install -g generator-aspnet
sudo mozroots --import --sync

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update

sudo apt-get install mono-devel
sudo apt-get install mono-complete




