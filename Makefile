packages:
	pacman -S python3 python-virtualenv podman docker vagrant libvirt qemu dnsmasq --noconfirm
vagrant: packages
	vagrant plugin install vagrant-libvirt
	vagrant box add generic/arch --provider libvirt
	vagrant box add generic/ubuntu2204 --provider libvirt
env:
	virtualenv -p python3 .venv
