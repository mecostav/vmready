# VMREADY:
### 2 in 1 vagrant ubuntu box with an ansible playbook to configure it.

![GitHub Logo](https://media2.giphy.com/media/l1CC5T7JDUfU62uTC/source.gif)

**Can be used as an ansible playbook to configure your Ubuntu instalation**

### Currently only the following linux distros are supported:

- [x] Ubuntu 18
- [x] Ubuntu 16
- [ ] Debian support (**Partial**)
- [ ] Mint support   (**Partial**)

> In the future i would like to add support for RHEL based distros, however, no plans have been made so far. Sorry!

- [ ] Fedora (TBA)
- [ ] CentOS (TBA)

### Requirements

### For Vagrant (If you are using the VM)

- [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
- [Virtualbox expansion pack](https://download.virtualbox.org/virtualbox/6.0.10/Oracle_VM_VirtualBox_Extension_Pack-6.0.10.vbox-extpack)
- [Vagrant](https://www.vagrantup.com/)

### For ansible-playbook (No VM required)
- ansible

```
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

### How to run:

### Vagrant box:
```
$ git clone git@github.com:mecostav/workready-vm.git
$ cd workread-vm
$ vagrant up
```

>Wait until the script finishes. It might take some time as its building the GUI from the source

```
$ vagrant halt
$ vagrant up
```

>You are good to go

### Ansible playbook: (No VM)
```
$ git clone git@github.com:mecostav/workready-vm.git
$ cd ansible
$ ansible-playbook -i "localhost," -c local <playbook-name>.yml
```

> there are 4 playbooks in the ansible folder

* **basebox**:      installs core utilities. does not come with an IDE and other development/network tools
* **dev-tools**:    installs development tools.
* **net-tools**:    provides network tools.
* **full**:         includes all of the previous

### When you are done working do:
```
$ vagrant halt
```

### To start the VM again do:
```'
$ vagrant up
```

### Snapshotting your vm
>Once you have your VM has booted up and started it is good practice to snapshot your VM

```
$ vagrant shapshot save <snapshot-name>
```

## Special thanks

> Shoutout to [AndyMacDroo](https://github.com/AndyMacDroo) for inpiration for this repo.