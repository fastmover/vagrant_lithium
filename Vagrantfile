Vagrant.configure("2") do |config|
  config.vm.box = "lucid64"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-10044-x64-vbox4210.box"

  config.vm.network "private_network", ip: "192.168.56.101"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3306, host: 33060
  config.vm.network "forwarded_port", guest: 443, host: 8443

  config.vm.synced_folder "./", "/var/www", id: "vagrant-root", :nfs => false, owner: "www-data", group: "www-data", :mount_options => ['dmode=777', 'fmode=777']

  config.vm.usable_port_range = (2200..2250)
  config.vm.provider :virtualbox do |virtualbox|
    virtualbox.customize ["modifyvm", :id, "--name", "lithiumapp"]
    virtualbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    virtualbox.customize ["modifyvm", :id, "--memory", "768"]
    virtualbox.customize ["setextradata", :id, "--VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end

  config.vm.provision :shell, :path => "shell/initial-setup.sh"
  config.vm.provision :shell, :path => "shell/update-puppet.sh"
  config.vm.provision :shell, :path => "shell/librarian-puppet-vagrant.sh"
  config.vm.provision :shell, :path => "shell/set-path.sh"
  config.vm.provision :puppet do |puppet|
    puppet.facter = {
      "ssh_username" => "vagrant"
    }

    puppet.manifests_path = "puppet/manifests"
    puppet.options = ["--verbose", "--hiera_config /vagrant/hiera.yaml", "--parser future"]
  end






  config.ssh.username = "vagrant"

  config.ssh.shell = "bash -l"

  config.ssh.keep_alive = true
  config.ssh.forward_agent = false
  config.ssh.forward_x11 = false
  config.vagrant.host = :detect
end

