# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box     = "centos-6.5"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"

  config.vm.provision "shell", inline: "echo 'export RUBY_BUILD_CACHE_PATH=/vagrant/cache' > /etc/profile.d/vagrant-rbenv.sh"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "rackup.yml"
  end
end
