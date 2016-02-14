HUB_VERSION=2.2.3
HUB_TARBALL=hub-linux-amd64-${HUB_VERSION}.tgz
sudo -u vagrant -i mkdir /home/vagrant/hub
sudo -u vagrant -i sh -c "cd /home/vagrant/download && curl -s -L -O https://github.com/github/hub/releases/download/v2.2.3/hub-linux-amd64-${HUB_VERSION}.tgz"
sudo -u vagrant -i tar zxf /home/vagrant/download/$HUB_TARBALL -C /home/vagrant/hub --strip-components=1
cd /home/vagrant/hub && ./install
