sudo -u vagrant -i mkdir /home/vagrant/lib
sudo -u vagrant -i sh -c "cd /home/vagrant/lib && curl -s -L -O https://raw.github.com/lehmannro/assert.sh/v1.1/assert.sh"
cp $PROVISIONING/files/checklist.sh /home/vagrant/bin
chown vagrant:vagrant /home/vagrant/bin/checklist.sh
sudo -u vagrant -i /home/vagrant/bin/checklist.sh
