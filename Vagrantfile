# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "gitlab.local.test"

  config.vm.network :private_network, ip: "33.33.33.33"
  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.provider "virtualbox" do |vb|
      vb.name = "gitlab-server"
      vb.memory = "4096"
      vb.cpus = "2"
  end

  config.vm.provision :docker
  config.vm.provision "shell", path: "scripts/install-gitlab.sh"
end