echo "Installing Python"
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y
cd /tmp
curl https://www.python.org/ftp/python/3.11.2/Python-3.11.2.tgz -o Python-3.11.2.tgz
tar -xvzf Python-3.11.2.tgz
cd Python-3.11.2
./configure --enable-optimizations
su - vagrant 
sudo make altinstall -j4
sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.11 1
sudo update-alternatives --install /usr/bin/pip pip /usr/local/bin/pip3.11 1
