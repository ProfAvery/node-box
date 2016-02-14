sudo -u vagrant -i sh -c "cd /home/vagrant/download && wget -nv --trust-server-names 'https://cli.run.pivotal.io/stable?release=debian64&source=github'"
dpkg -i /home/vagrant/download/cf-cli-installer_*_x86-64.deb
