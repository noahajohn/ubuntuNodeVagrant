cd
# mkdir bin
# cd ~/bin
# echo 'Paste here latest nodejs version url: '
# read url
# wget $url
# tar -xf node*.xz
# nodeDir=$(ls -p | grep node | grep /)
# cd $nodeDir/bin
# sudo ./npm install -g n
# sudo ./n latest
# cd
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get install -y nodejs
# sudo npm install -g npm
sudo npm install -g n
sudo npm install -g mocha
echo "Latest node, npm, and mocha versions installed in system globally."
cd
echo "Installing mongodb..."
#mongo 3.6
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
# mongo 4.0
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
# echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
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
