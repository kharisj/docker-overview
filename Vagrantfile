Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.define "docker" do |docker|
    docker.vm.network "private_network" , ip: "10.10.10.10"
    docker.vm.provision "shell", path: "./scripts/dockerinstallation.sh"
  end
end