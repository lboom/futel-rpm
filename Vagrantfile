# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
	config.vm.define "rpmbuild"
	# https://app.vagrantup.com/centos/boxes/7
  config.vm.box = "centos/7"

	config.vm.synced_folder ".", "/vagrant",
		:mount_options => ["dmode=777,fmode=777"]

	config.vm.provider :virtualbox do |vb|
		vb.memory = 1024
		config.vm.network "private_network", type: "dhcp", :adapter => 2
		#vb.gui = true
	end

	config.vm.provision "ansible" do |ansible|
		ansible.playbook = "build_box.yml"
	end

end
