echo "Installing Go"

wget -q https://go.dev/dl/go1.18.3.linux-amd64.tar.gz 
tar -C /usr/local -xzf go1.18.3.linux-amd64.tar.gz
echo 'PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
cd ~
rm -rf go1.18.3.linux-amd64.tar.gz 
