all:
	apt install -y puppet puppet-module-puppetlabs-apt
	puppet apply kali
