REDIS_TARBALL=redis-stable.tar.gz
sudo -u vagrant -i mkdir -p /home/vagrant/bin /home/vagrant/download /home/vagrant/redis
sudo -u vagrant -i curl -s -o /home/vagrant/download/$REDIS_TARBALL http://download.redis.io/releases/$REDIS_TARBALL
sudo -u vagrant -i tar zxf /home/vagrant/download/$REDIS_TARBALL -C /home/vagrant/redis --strip-components=1
sudo -u vagrant -i make -C /home/vagrant/redis
sudo -u vagrant -i ln -s /home/vagrant/redis/src/redis-cli bin
