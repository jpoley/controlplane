echo "Installing Go"

wget -q https://go.dev/dl/go1.20.1.linux-amd64.tar.gz 
tar -C /usr/local -xzf go1.20.1.linux-amd64.tar.gz
echo 'PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
echo 'PATH=$PATH:/usr/local/go/bin' >> /home/vagrant/.bashrc
echo 'PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
cd ~
rm -rf go1.20.1.linux-amd64.tar.gz 
