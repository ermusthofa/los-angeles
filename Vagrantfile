# ~*~ mode: ruby ~*~
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.network "private_network", ip: "10.10.10.20"
    config.vm.provider "virtualbox" do |vbox|
      vbox.memory = 1024
      vbox.cpus = 2
    end
  
    config.vm.define "flask" do |flask|
      flask.vm.box = "ubuntu/trusty64"
      flask.vm.hostname = "flask"
    end
  end
  