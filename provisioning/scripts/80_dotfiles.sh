cp $PROVISIONING/files/keychain.sh /etc/profile.d

for dotfile in inputrc jshintrc vimrc; do
    cp $PROVISIONING/files/$dotfile ~vagrant/.$dotfile
    chown vagrant:vagrant ~vagrant/.$dotfile
done

sudo -u vagrant -i git clone https://github.com/gmarik/vundle.git ~vagrant/.vim/bundle/vundle
sudo -u vagrant -i vim +BundleInstall +qall

