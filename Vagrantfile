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

  config.vm.define "mysql" do |v|
    v.vm.provider "docker" do |d|
      d.image = "library/mysql"
      d.name  = "mysql"
      d.ports = ["3306:3306"]
      d.vagrant_vagrantfile = "./Vagrantfile-hostvm"
      d.env = { MYSQL_ROOT_PASSWORD: "root" }
    end
  end

  config.vm.define "wordpress" do |v|
    v.vm.provider "docker" do |d|
      d.image = "library/wordpress"
      d.name  = "wordpress"
      d.ports = ["8081:80"]
      d.vagrant_vagrantfile = "./Vagrantfile-hostvm"
      #d.env = { MYSQL_ROOT_PASSWORD: "root" }
      d.link("mysql:mysql")
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
