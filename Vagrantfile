# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

IP = "192.168.111.222"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box_url = "http://10.0.0.209/vm/opscode_centos-6.5_provisionerless.box"
  config.vm.box     = "opscode-centos-6.5"

  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :private_network, ip: IP

  config.cache.auto_detect = true if Vagrant.has_plugin?("vagrant-cachier")

  config.vm.provision "ansible" do |ansible|
    ansible.inventory_path = "hosts"
    ansible.playbook       = "server.yml"
    ansible.sudo           = true
    ansible.verbose        = "v"
  end
end
