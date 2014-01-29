# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box_url = "http://10.0.0.209/vm/opscode_centos-6.5_provisionerless.box"
  config.vm.box     = "opscode-centos-6.5"

  { "db" => 24, "app" => 25}.each_pair do |type, n|
    config.vm.define type, primary: true do |box|
      box.vm.network :private_network,  ip: "192.168.100.#{n}"
      box.vm.network :forwarded_port,   guest: 22, host: "40#{n}".to_i
    end
  end
end
