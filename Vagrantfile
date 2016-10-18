# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
UBUNTU_CODENAME = "trusty"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/#{UBUNTU_CODENAME}64"

  config.vm.box_check_update = true

  config.vm.network :forwarded_port, guest: 3000, host: 3000, auto_correct: true
  config.vm.network :forwarded_port, guest: 4040, host: 4040, auto_correct: true
  config.vm.network :forwarded_port, guest: 8000, host: 8000, auto_correct: true
  config.vm.network :forwarded_port, guest: 8080, host: 8080, auto_correct: true

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  config.vm.provider :virtualbox do |vb|
    vb.name = "CPSC 473"

    # Give VM 1/4 system memory via https://stefanwrobel.com/how-to-make-vagrant-performance-not-suck
    host = RbConfig::CONFIG['host_os']

    if host =~ /darwin/
      # sysctl returns Bytes and we need to convert to MB
      mem = `sysctl -n hw.memsize`.to_i / 1024
    elsif host =~ /linux/
      # meminfo shows KB and we need to convert to MB
      mem = `grep 'MemTotal' /proc/meminfo | sed -e 's/MemTotal://' -e 's/ kB//'`.to_i 
    elsif host =~ /mswin|mingw|cygwin/
      # Windows code via https://github.com/rdsubhas/vagrant-faster
      mem = `wmic computersystem Get TotalPhysicalMemory`.split[1].to_i / 1024
    end

    vb.memory = mem / 1024 / 4

    # Enable GUI for troubleshooting
    #vb.gui = true

    # Allow symlinks on Windows.
    # Thanks to Skyler Lister Aley for finding this.
    # References:
    #   http://www.sureshjoshi.com/development/installing-nodejs-vagrant-windows/
    #   http://www.ahtik.com/blog/fixing-your-virtualbox-shared-folder-symlink-error/
    vb.customize [
        'setextradata',
        :id, 'VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant',
        '1'
    ]

  end

  # Fix spurious error message per https://github.com/mitchellh/vagrant/issues/1673
  config.vm.provision "fix-no-tty", type: "shell" do |s|
    s.privileged = false
    s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
  end
 
  config.vm.provision :shell, path: "provisioning/provision.sh"

end
