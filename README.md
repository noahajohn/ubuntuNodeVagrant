### Vagrant machine running ubuntu trusty x64 ready to play with Nodejs
This will setup a ubuntu trusty 64 bits vagrant box ready for play with nodejs, vim tmux and the
classical vim programming environment.
This assumes you already have a project on your host 
The project will be available inside `~/project` in the virtual machine out of the box.

This project uses my own dotfiles, you can check them in https://github.com/josegl/dotfiles.git

Feel free to fork this to use your own dotfiles or change whatever you want.

## How to use
1. Clone this repo in your project's root directory.
2. cd into the repo's directory
3. Run `vagrant up`
4. Run `vagrant ssh`
5. Inside the vagrant virtual machine run `git clone
   https://github.com/josegl/ubuntuNodeVagrant.git`.
6. cd inside the repo directory.
7. Run `./setup.sh`
8. You are done with the lastest npm,node version, tmux, vim with a bunch of usefull plugins and
   configs

9. To get all the config finished it's highly recommended to logout from the virtual machine and
   login again with `vagrant ssh` no vagrant machine reboot required

*Important note:* If you are asked for a password, it is 'vagrant' without quotes
