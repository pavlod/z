# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  #config.vm.box       = "chef/centos-7.0"
  #config.vm.provider  = "virtualbox"
  #config.vm.provision = "docker"

  config.vm.define "jenkins" do |v|
    v.vm.provider "docker" do |d|
      d.image = "library/jenkins"
      d.ports = ["8080:8080"]
      d.vagrant_vagrantfile = "./Vagrantfile-hostvm"
    end
  end

#  config.vm.provision "docker" do |d|
#    d.pull_images  "jenkins"
#    d.run          "jenkins"
#  end
#  config.vm.provider "virtualbox" do |d|
#    d.image = "chef/centos-7.0"
#  end

end
