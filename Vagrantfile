# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box     = "centos-6.5"
  config.vm.box_url = "http://10.0.0.209/vm/opscode_centos-6.5_provisionerless.box"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "rackup.yml"
  end
end
