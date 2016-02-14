LINUX_VERSION=ubuntu1404
MONGODB_VERSION=3.2.1
MONGODB_TARBALL=mongodb-linux-x86_64-${LINUX_VERSION}-${MONGODB_VERSION}.tgz
sudo -u vagrant -i mkdir -p /home/vagrant/bin /home/vagrant/download /home/vagrant/mongodb
sudo -u vagrant -i curl -s -o /home/vagrant/download/$MONGODB_TARBALL https://fastdl.mongodb.org/linux/$MONGODB_TARBALL
sudo -u vagrant -i tar zxf /home/vagrant/download/$MONGODB_TARBALL -C /home/vagrant/mongodb --strip-components=1
sudo -u vagrant -i ln -s /home/vagrant/mongodb/bin/mongo /home/vagrant/bin
