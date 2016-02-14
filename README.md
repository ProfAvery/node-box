# node-box

## Building a node-box

1. Install [VirtualBox](https://www.virtualbox.org/)
2. Install [Vagrant](http://www.vagrantup.com/)
3. Install [Git](http://git-scm.com/)
    - Windows: [GitHub for Windows](http://windows.github.com/) or [msysgit](http://msysgit.github.io/)
    - Mac: [GitHub for Mac](http://mac.github.com/) or install via [Homebrew](http://brew.sh/)
    - Linux: `sudo apt-get install git` or `sudo yum install git`
4. *(Windows only)* Install [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/)
5. Clone this repository
    - GUI: Click the *Clone in Desktop* button on the GitHub page
    - Command-Line: `git clone https://github.com/ProfAvery/node-box.git`
6. *(Optionally)* Edit `Vagrantfile`
    - Change `BITNESS` to 32 if you have a 32-bit machine
    - Set `vb.memory` explicitly if you don't want to use 1/4 of the available RAM
7. `vagrant up` *(This may take a while)*
8. Log in
    - Mac and linux: `vagrant ssh` (UNIX)
    - Windows: See below

### Configuring PuTTY on Windows

1. See
[Connect to Your Vagrant Virtual Machine with PuTTY](https://github.com/Varying-Vagrant-Vagrants/VVV/wiki/Connect-to-Your-Vagrant-Virtual-Machine-with-PuTTY)
for instructions on connecting.
2. Once you are able to connect successfully, see
[PuTTY: How to load, save or delete server connection settings](http://kb.site5.com/shell-access-ssh/putty-how-to-load-save-or-delete-server-connection-settings/)
to save your connection information.
3. Finally, to fix the line drawing characters used by NPM, see
[PuTTY, TMUX and NPM](http://curiouslynerdy.com/2013/09/putty-tmux-and-npm/)

## Shared directories

- The repository will be shared as `/vagrant`
- The `shared` subdirectory will be symlinked from `~vagrant/shared`

## Additional configuration details
- The username and password are both `vagrant`
- Ports will be forwarded from the host machine as follows:

Host port | Guest port
--------- | ----------
2222      | 22
8000      | 80
3000      | 3000
8080      | 8080

## Shutting down

When you are finished, you can stop the machine by running
    vagrant suspend
or
    vagrant halt
    
If you want to destroy and re-build the machine completely, run
    vagrant destroy
but make sure that any data you want to save has been copied to `~vagrant/shared` first
