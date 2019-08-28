apt-get update
apt-get upgrade -y
apt-get install -y build-essential dkms linux-headers-$(uname -r)
apt-get install -y ubuntu-desktop virtualbox-guest-x11