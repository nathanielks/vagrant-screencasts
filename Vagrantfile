# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "emil-appunite/macos-10.13.3"

  VAGRANT_COMMAND = ARGV[0]
  if VAGRANT_COMMAND == "ssh"
    config.ssh.username = 'screencasts'
  end
  config.vm.synced_folder ".", "/vagrant", type: "rsync" # or "rsync"

  config.vm.provision "shell", path: "bin/user.sh"
  config.vm.provision "shell", inline: <<-SHELL
    su screencasts /vagrant/bin/shell.sh
  SHELL
end
