all:
	apt install puppet puppet-module-puppetlabs-apt
	puppet apply kali
