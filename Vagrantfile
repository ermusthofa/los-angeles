# ~*~ mode: ruby ~*~
# vi: set ft=ruby :

require_relative "requirements.rb"

# Set number of nodes
N = 1

# Set ansible inventory
ansible_groups = {
  "flask" => [
    "flask-[0:#{N-1}]"
  ]
}

# Set ip subnet
subnet = "10.10.10."
subnet_ip_start = 20

Vagrant.configure("2") do |config|
  (1..N).each do |node|

    node_id = node - 1

    config.vm.define "flask-#{node_id}" do |flask|
      flask.vm.box = "ubuntu/trusty64"
      flask.vm.hostname = "flask-#{node_id}"
      flask.vm.provision "ansible" do |ansible|
        ansible.playbook = "ansible/flask-playbook.yml"
        ansible.groups = ansible_groups
        ansible.raw_arguments = [
            '--diff'
        ]
      end

      flask.vm.network "private_network", ip: subnet+"#{subnet_ip_start + node_id}"
      flask.vm.provider "virtualbox" do |vbox|
        vbox.memory = 1024
        vbox.cpus = 2
      end
    end

  end
end
