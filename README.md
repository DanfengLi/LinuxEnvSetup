LinuxEnvSetup
=============

Dan's linux environment setup

* setup vim
1. cd LinuxEnvSetup/.vim
2. sh ./pathogenSetup.sh 
3. cd ~/.vim
4. ln -s ~/github/LinuxEnvSetup/.vim/{c*,f*,s*} .
5. cd ~/ && ln -s ~/github/LinuxEnvSetup/.vimrc .

* setup .bashrc
1. cd ~/ && ln -s ~/github/LinuxEnvSetup/.bashrc .
