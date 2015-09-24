cd
mkdir bin
cd bin
git clone https://github.com/josegl/dotfiles
cd dotfiles
sed -i.bak -e 's/3\.4\/site/2\.7\/dist/g' .tmux.conf
./setupEnvironment.sh

cd ~/bin
echo 'Introduce la url de la ultima version de node: '
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

echo 'tenemos la ultima version de node y npm instaladas de forma global en el sistema'
echo 'Vamos a instalar los plugins de vim, cuando se haya hecho, sal de vim para continuar'
echo ' presiona una tecla para seguir'
read tecla
vim -c "PluginInstall"
cd ~/.vim/bundle/YouCompleteMe
./install.py
cd ../tern_for_vim
npm install
echo 'Cambiando shell de bash a zsh'
cd
sudo usermod -s /bin/zsh vagrant
echo 'Instalando oh-my-zsh'
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo 'Tenemos la configuracion del entorno terminada'
