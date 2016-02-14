cp $PROVISIONING/files/keychain.sh /etc/profile.d
cp $PROVISIONING/files/local_gems.sh /etc/profile.d

for dotfile in bash_aliases gitignore_global inputrc jshintrc vimrc; do
    cp $PROVISIONING/files/$dotfile /home/vagrant/.$dotfile
    chown vagrant:vagrant /home/vagrant/.$dotfile
done

sudo -u vagrant -i git config --global core.excludesfile /home/vagrant/.gitignore_global

sudo -u vagrant -i git clone https://github.com/VundleVim/Vundle.vim.git /home/vagrant/.vim/bundle/Vundle.vim
sudo -u vagrant -i vim +PluginInstall +qall
