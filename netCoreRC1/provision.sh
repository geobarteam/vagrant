#common
sudo apt-get update
sudo apt-get -y install git 
sudo apt-get -y install ubuntu-desktop 
sudo apt-get -y install virtualbox-guest-utils virtualbox-guest-x11  virtualbox-guest-dkms 
sudo apt-get -y install nodejs npm
sudo apt-get -y install build-essential openssl libssl-dev curl 

#yomen
sudo npm install -g -yo
sudo npm install -g generator-aspnet

sudo mozroots --import --sync

#Install xamarin certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list

#Install apps
sudo apt-get -y install chromium-browser

#Install mono 
sudo apt-get -y install mono-devel 
sudo apt-get -y install mono-complete 


#Install .netcore & mono
sudo apt-get -y install unzip curl 
curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh && source ~/.dnx/dnvm/dnvm.sh

sudo apt-get -y install libunwind8 gettext libssl-dev libcurl4-openssl-dev zlib1g libicu-dev uuid-dev 

dnvm upgrade -r coreclr
dnvm upgrade -r mono

#Install libuv
sudo apt-get install make automake libtool curl  
curl -sSL https://github.com/libuv/libuv/archive/v1.8.0.tar.gz | sudo tar zxfv - -C /usr/local/src
cd /usr/local/src/libuv-1.8.0
sudo sh autogen.sh
sudo ./configure
sudo make
sudo make install
sudo rm -rf /usr/local/src/libuv-1.8.0 && cd ~/
sudo ldconfig



