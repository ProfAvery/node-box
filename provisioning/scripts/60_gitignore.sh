cp $PROVISIONING/files/gitignore_global ~vagrant/.gitignore_global
chown vagrant:vagrant ~vagrant/.gitignore_global
curl -s https://raw.github.com/github/gitignore/master/Global/Archives.gitignore >> ~vagrant/.gitignore_global 
curl -s https://raw.github.com/github/gitignore/master/Global/Linux.gitignore >> ~vagrant/.gitignore_global 
curl -s https://raw.github.com/github/gitignore/master/Global/OSX.gitignore >> ~vagrant/.gitignore_global 
curl -s https://raw.github.com/github/gitignore/master/Global/Windows.gitignore >> ~vagrant/.gitignore_global 
curl -s https://raw.github.com/github/gitignore/master/Global/vim.gitignore >> ~vagrant/.gitignore_global 
curl -s https://raw.github.com/github/gitignore/master/Node.gitignore >> ~vagrant/.gitignore_global 
curl -s https://raw.github.com/github/gitignore/master/Yeoman.gitignore >> ~vagrant/.gitignore_global 
sudo -u vagrant -i git config --global core.excludesfile ~vagrant/.gitignore_global
