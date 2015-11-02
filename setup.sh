cd
mkdir bin
cd ~/bin
echo 'Paste here latest nodejs version url: '
read url
wget $url
tar -xf node*.gz
nodeDir=$(ls -p | grep node | grep /)
cd $nodeDir/bin
sudo ./npm install -g n
sudo ./n latest
cd
sudo npm install -g npm
sudo npm install -g n
echo "Latest node and npm versions installed system globally."
cd
echo "Installing mongodb..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start
echo 'Changing from bash to zsh'
sudo usermod -s /bin/zsh vagrant
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Done."
echo "It's highly recommended to log out and log in again in order reload all environment variables"
echo "with the correct values."
