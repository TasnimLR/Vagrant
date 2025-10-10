Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  # ====== MACHINE SERVER ======
  config.vm.define "tasnimS" do |server|
    server.vm.hostname = "tasnimS"
    server.vm.network "private_network", ip: "192.168.56.110"

    server.vm.provider "virtualbox" do |vb|
      vb.name = "tasnimS"
      vb.memory = 1024
      vb.cpus = 1
    end

    # Provision depuis fichier externe
    server.vm.provision "shell", path: "install_server.sh"
  end

  # ====== MACHINE WORKER ======
  config.vm.define "tasnimSW" do |worker|
    worker.vm.hostname = "tasnimSW"
    worker.vm.network "private_network", ip: "192.168.56.111"

    worker.vm.provider "virtualbox" do |vb|
      vb.name = "tasnimSW"
      vb.memory = 1024
      vb.cpus = 1
    end

    # Provision depuis fichier externe
    worker.vm.provision "shell", path: "install_worker.sh"
  end
end
