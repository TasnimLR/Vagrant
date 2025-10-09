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

    # Provision pour installer K3s (contrôleur)
    server.vm.provision "shell", inline: <<-SHELL
      echo "=== Installation de K3s sur tasnimS (Server) ==="
      if ! command -v k3s &> /dev/null; then
        curl -sfL https://get.k3s.io | sh -
        echo "K3s installé avec succès sur tasnimS"
      else
        echo "K3s déjà installé sur tasnimS"
      fi
      sudo cat /var/lib/rancher/k3s/server/node-token > /vagrant/node-token.txt
    SHELL
  end

  # ====== MACHINE SERVERWORKER ======
  config.vm.define "tasnimSW" do |worker|
    worker.vm.hostname = "tasnimSW"
    worker.vm.network "private_network", ip: "192.168.56.111"

    worker.vm.provider "virtualbox" do |vb|
      vb.name = "tasnimSW"
      vb.memory = 1024
      vb.cpus = 1
    end

    # Provision pour installer K3s (agent)
    worker.vm.provision "shell", inline: <<-SHELL
      echo "=== Installation de K3s sur tasnimSW (Agent) ==="
      while [ ! -f /vagrant/node-token.txt ]; do
        echo "En attente du token K3s du serveur..."
        sleep 5
      done
      TOKEN=$(cat /vagrant/node-token.txt)
      if ! command -v k3s &> /dev/null; then
        curl -sfL https://get.k3s.io | K3S_URL=https://192.168.56.110:6443 K3S_TOKEN=$TOKEN sh -
        echo "K3s installé avec succès sur tasnimSW"
      else
        echo "K3s déjà installé sur tasnimSW"
      fi
    SHELL
  end
end

