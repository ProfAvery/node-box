NGROK_VERSION=2.0.19
HUB_ZIPFILE=ngrok_${NGROK_VERSION}_linux_amd64.zip
https://dl.ngrok.com/ngrok_2.0.19_linux_amd64.zip
sudo -u vagrant -i sh -c "cd /home/vagrant/download && curl -s -L -O https://dl.ngrok.com/$HUB_ZIPFILE"
sudo -u vagrant -i sh -c "cd /home/vagrant/bin && unzip /home/vagrant/download/$HUB_ZIPFILE"
