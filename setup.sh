cd
mkdir bin
cd bin
repo="https://github.com/josegl/dotfiles";
git clone $repo
cd dotfiles
sed -i.bak -e 's/usr\/lib\/python3\.4\/site/usr\/local\/lib\/python2\.7\/dist/g' .tmux.conf
./setupEnvironment.sh
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
echo "Let's install vim plugins. Once it has finished, quit vim to continue."
echo "Press any key to continue"
read key
vim -c "PluginInstall"
cd ~/.vim/bundle/YouCompleteMe
./install.py
cd ../tern_for_vim
npm install
echo 'Changing from bash to zsh'
cd
sudo usermod -s /bin/zsh vagrant
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Done."
echo "It's highly recommended to log out and log in again in order reload all environment variables"
echo "with the correct values."
