Vagrant.configure("2") do |config|
  # Choix de la box
  config.vm.box = "ubuntu/focal64"

  # ====== MACHINE SERVER ======
  config.vm.define "tasnimS" do |server|
    server.vm.hostname = "tasnimS"
    server.vm.network "private_network", ip: "192.168.56.110"

    server.vm.provider "virtualbox" do |vb|
      vb.name = "tasnimS"
      vb.memory = 512
      vb.cpus = 1
    end

    server.vm.provision "shell", inline: <<-SHELL
      echo "== Configuration SSH sur tasnimS =="
      sudo apt-get update -y
      sudo apt-get install -y openssh-server
      mkdir -p /home/vagrant/.ssh
      cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
      chmod 600 /home/vagrant/.ssh/authorized_keys
    SHELL
  end

  # ====== MACHINE SERVERWORKER ======
  config.vm.define "tasnimSW" do |worker|
    worker.vm.hostname = "tasnimSW"
    worker.vm.network "private_network", ip: "192.168.56.111"

    worker.vm.provider "virtualbox" do |vb|
      vb.name = "tasnimSW"
      vb.memory = 512
      vb.cpus = 1
    end

    worker.vm.provision "shell", inline: <<-SHELL
      echo "== Configuration SSH sur tasnimSW =="
      sudo apt-get update -y
      sudo apt-get install -y openssh-server
      mkdir -p /home/vagrant/.ssh
      cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
      chmod 600 /home/vagrant/.ssh/authorized_keys
    SHELL
  end
end
