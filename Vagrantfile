# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.cache.auto_detect = true if Vagrant.has_plugin?("vagrant-cachier")

  config.vm.box = "opscode-centos-6.4"

  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.network :private_network, ip: "192.168.111.222"

  config.vm.provision "ansible" do |ansible|
    ansible.inventory_path = "hosts"
    ansible.playbook       = "server.yml"
    ansible.sudo            = true
  end
end
