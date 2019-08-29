Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-18.04"
    config.vm.hostname = "ubuntu.vm.local"
    config.vm.box_check_update = true

    config.vm.provider "virtualbox" do |vm|
        vm.memory = 8192
        vm.cpus = 4
        vm.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
        vm.customize ["modifyvm", :id, "--vram", "128"]

        vm.gui = true
        vm.customize ["modifyvm", :id, "--videocapres", "1920x1080"]
        vm.customize ["modifyvm", :id, "--monitorcount", "1"]
        vm.customize ["modifyvm", :id, "--videocapfps", "30"]

        vm.name = "ubuntu.vm.local"
        vm.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
        vm.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
        vm.customize ["modifyvm", :id, "--usb", "on"]
        vm.customize ["modifyvm", :id, "--audioin", "on"]
        vm.customize ["modifyvm", :id, "--audioout", "on"]
    end

    config.vm.provision "shell", path: "./sh/bootstrap.sh"

    config.vm.provision "ansible_local" do |ansible|
        ####    @costav
        ####    uncomment if you require any additional plabooks
        #ansible.playbook = "./ansible/basebox.yml"
        #ansible.playbook = "./ansible/network-tools.yml"
        #ansible.playbook = "./ansible/dev-tools.yml"
        ansible.playbook = "./ansible/full.yml"
    end

#    config.vm.provision "docker" do |docker|
#        docker.pull_images ["hashicorp/terraform", "datadog/docker-dd-agent"]
#    end
end