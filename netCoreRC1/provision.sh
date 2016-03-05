
sudo apt-get install git 
sudo apt-get install --no-install-recommends ubuntu-desktop --assume-yes
sudo apt-get install virtualbox-guest-utils virtualbox-guest-x11  virtualbox-guest-dkms --assume-yes

 
sudo apt-get install build-essential openssl libssl-dev curl 
sudo npm install -g -yo
sudo npm install -g generator-aspnet
sudo mozroots --import --sync

#Install xamarin certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list

#Install apps
sudo apt-get install chromium-browser --assume-yes

#Install mono 
sudo apt-get install mono-devel --assume-yes
sudo apt-get install mono-complete --assume-yes


#Install .netcore & mono
sudo apt-get install unzip curl --assume-yes
curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh && source ~/.dnx/dnvm/dnvm.sh
sudo apt-get install libunwind8 gettext libssl-dev libcurl4-openssl-dev zlib1g libicu-dev uuid-dev --assume-yes
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



