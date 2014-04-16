# -*- mode: ruby -*-
# vi: set ft=ruby :

# Change this to BITNESS=64 for Mac OS X and 64-bit Windows or Linux
BITNESS=64

# Change this to the amount of memory you want to allocate to your VM
MB=2048

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise#{BITNESS}"
  config.vm.box_url="http://files.vagrantup.com/precise#{BITNESS}.box"

  config.vm.network :forwarded_port, guest: 80, host: 8000, auto_correct: true
  config.vm.network :forwarded_port, guest: 3000, host: 3000, auto_correct: true
  config.vm.network :forwarded_port, guest: 8080, host: 8080, auto_correct: true

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  config.vm.provider :virtualbox do |vb|
    vb.name = "CPSC 473"
    vb.memory = MB

    # Enable GUI for troubleshooting
    #vb.gui = true
  end
 
  config.vm.provision :shell, path: "provisioning/provision.sh"

end
