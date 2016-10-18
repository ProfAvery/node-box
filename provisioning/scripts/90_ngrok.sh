NGROK_ZIPFILE=ngrok-stable-linux-amd64.zip
NGROK_URL="https://bin.equinox.io/c/4VmDzA7iaHb/$NGROK_ZIPFILE"
sudo -u vagrant -i sh -c "cd /home/vagrant/download && curl -s -L -O $NGROK_URL"
sudo -u vagrant -i sh -c "cd /home/vagrant/bin && unzip /home/vagrant/download/$NGROK_ZIPFILE"
